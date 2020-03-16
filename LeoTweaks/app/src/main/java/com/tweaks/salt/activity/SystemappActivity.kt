package com.tweaks.salt.activity

import android.app.Fragment

import android.os.Bundle
import android.support.v7.widget.Toolbar
import android.view.MenuItem
import android.view.View

import com.tweaks.salt.R
import com.tweaks.salt.base.BaseActivity
import com.tweaks.salt.kt.FragmentApplistions
import com.tweaks.salt.kt.FragmentPerformance
import com.tweaks.salt.kt.ImgFragment
import com.tweaks.salt.theme.Utils
import com.tweaks.salt.utils.AndroidUtils
import com.tweaks.salt.utils.Constants
import com.tweaks.salt.utils.root.Helpers
import com.tweaks.salt.widget.DialogUtil.Promptdonate


class SystemappActivity : BaseActivity() {
    override fun initStatusBarColor(): Boolean {
        return true
    }

    private var mFragment: FragmentApplistions? = null

    override fun initLayout(): Int {
        return R.layout.activity_simple_container
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        if (savedInstanceState == null) {

            if (AndroidUtils.getCustomOTA() == Helpers.CODE) {
                this.mFragment = FragmentApplistions()
                replaceFragment(R.id.fragment_container, mFragment!!)
            } else {
                Promptdonate(this)

            }

        }
        Utils.StatusBarColor(this)
        getToolbarViews()
    }

    private fun getToolbarViews() {
        val toolbar = findViewById<View>(R.id.toolbar) as Toolbar
        setSupportActionBar(toolbar)
        supportActionBar!!.setTitle(R.string.assist_grid_apps)
        supportActionBar!!.setDisplayHomeAsUpEnabled(true)
    }

    fun replaceFragment(viewId: Int, fragment: Fragment) {
        fragmentManager.beginTransaction().replace(viewId, fragment).commit()
    }

    override fun onOptionsItemSelected(item: MenuItem): Boolean {
        when (item.itemId) {
            android.R.id.home -> {
                finish()
                return true
            }
            else -> return super.onOptionsItemSelected(item)
        }
    }

}
