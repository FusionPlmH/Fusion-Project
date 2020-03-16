package com.topjohnwu.magisk.utils

import android.content.pm.PackageManager
import android.util.Base64
import android.util.Base64OutputStream
import com.topjohnwu.magisk.Config
import com.topjohnwu.magisk.di.koinModules
import com.topjohnwu.signing.CryptoUtils.readCertificate
import com.topjohnwu.signing.CryptoUtils.readPrivateKey
import com.topjohnwu.superuser.internal.InternalUtils
import org.bouncycastle.asn1.x500.X500Name
import org.bouncycastle.cert.jcajce.JcaX509CertificateConverter
import org.bouncycastle.cert.jcajce.JcaX509v3CertificateBuilder
import org.bouncycastle.operator.jcajce.JcaContentSignerBuilder
import org.koin.core.context.GlobalContext
import org.koin.core.context.startKoin
import timber.log.Timber
import java.io.ByteArrayOutputStream
import java.math.BigInteger
import java.security.KeyPairGenerator
import java.security.KeyStore
import java.security.MessageDigest
import java.security.PrivateKey
import java.security.cert.X509Certificate
import java.util.*
import java.util.zip.GZIPInputStream
import java.util.zip.GZIPOutputStream

private interface CertKeyProvider {
    val cert: X509Certificate
    val key: PrivateKey
}

@Suppress("DEPRECATION")
class Keygen: CertKeyProvider {

    companion object {
        private const val ALIAS = "magisk"
        private val PASSWORD get() = "magisk".toCharArray()
        private const val TESTKEY_CERT = "61ed377e85d386a8dfee6b864bd85b0bfaa5af81"
        private const val ALPHANUM = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
        private const val BASE64_FLAG = Base64.NO_PADDING or Base64.NO_WRAP
    }

    private val start = Calendar.getInstance()
    private val end = Calendar.getInstance().apply { add(Calendar.YEAR, 30) }

    override val cert get() = provider.cert
    override val key get() = provider.key

    private val provider: CertKeyProvider

    inner class KeyStoreProvider : CertKeyProvider {
        private val ks by lazy { init() }
        override val cert by lazy { ks.getCertificate(ALIAS) as X509Certificate }
        override val key by lazy { ks.getKey(ALIAS, PASSWORD) as PrivateKey }
    }

    class TestProvider : CertKeyProvider {
        override val cert by lazy {
            readCertificate(javaClass.getResourceAsStream("/keys/testkey.x509.pem"))
        }
        override val key by lazy {
            readPrivateKey(javaClass.getResourceAsStream("/keys/testkey.pk8"))
        }
    }

    init {
        // This object could possibly be accessed from an external app
        // Get context from reflection into Android's framework
        val context = InternalUtils.getContext()
        val pm = context.packageManager
        val info = pm.getPackageInfo(context.packageName, PackageManager.GET_SIGNATURES)
        val sig = info.signatures[0]
        val digest = MessageDigest.getInstance("SHA1")
        val chksum = digest.digest(sig.toByteArray())

        val sb = StringBuilder()
        for (b in chksum) {
            sb.append("%02x".format(0xFF and b.toInt()))
        }

        provider = if (sb.toString() == TESTKEY_CERT) {
            // The app was signed by the test key, continue to use it (legacy mode)
            TestProvider()
        } else {
            KeyStoreProvider()
        }
    }

    private fun randomString(): String {
        val rand = kotlin.random.Random.Default
        val len = rand.nextInt(5, 10)
        val sb = StringBuilder(len)
        for (i in 0..len) {
            val idx = rand.nextInt(ALPHANUM.length)
            sb.append(ALPHANUM[idx])
        }
        return sb.toString()
    }

    private fun init(): KeyStore {
        GlobalContext.getOrNull() ?: {
            // Invoked externally, do some basic initialization
            startKoin {
                modules(koinModules)
            }
            Timber.plant(Timber.DebugTree())
        }()

        val raw = Config.keyStoreRaw
        val ks = KeyStore.getInstance("PKCS12")
        if (raw.isEmpty()) {
            ks.load(null)
        } else {
            GZIPInputStream(Base64.decode(raw, BASE64_FLAG).inputStream()).use {
                ks.load(it, PASSWORD)
            }
        }

        // Keys already exist
        if (ks.containsAlias(ALIAS))
            return ks

        // Generate new private key and certificate
        val kp = KeyPairGenerator.getInstance("RSA").apply { initialize(4096) }.genKeyPair()
        val dname = X500Name("CN=${randomString()}")
        val builder = JcaX509v3CertificateBuilder(dname, BigInteger(160, Random()),
            start.time, end.time, dname, kp.public)
        val signer = JcaContentSignerBuilder("SHA256WithRSA").build(kp.private)
        val cert = JcaX509CertificateConverter().getCertificate(builder.build(signer))

        // Store them into keystore
        ks.setKeyEntry(ALIAS, kp.private, PASSWORD, arrayOf(cert))
        val bytes = ByteArrayOutputStream()
        GZIPOutputStream(Base64OutputStream(bytes, BASE64_FLAG)).use {
            ks.store(it, PASSWORD)
        }
        Config.keyStoreRaw = bytes.toString("UTF-8")

        return ks
    }
}
