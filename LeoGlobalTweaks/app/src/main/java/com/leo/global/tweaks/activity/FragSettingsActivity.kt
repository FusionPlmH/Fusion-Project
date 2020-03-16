package com.leo.global.tweaks.activity



import android.os.Bundle
import android.support.design.widget.Snackbar
import android.app.Fragment


import android.view.View
import com.leo.global.fragment.BixbyKeyFragment
import com.leo.global.fragment.LogThatShitFragment
import com.leo.global.fragment.SystemSoundFragment

import com.leo.global.fragment.SystemUIClockFragment
import com.leo.global.preference.AppPicker

import com.leo.global.tools.deviceinfo.ExtraInfoFragment
import com.leo.global.tools.kotlin.ImgFragment
import java.io.Serializable

import com.leo.global.tweaks.R
import com.leo.global.tweaks.base.BaseFragActivity

class FragSettingsActivity : BaseFragActivity() {
    override fun initAppBarLayout(): Int {
        return R.id.app_bar
    }


    override fun initLayout(): Int {
        return R.layout.activity_fragment
    }
    override fun onCreate(savedInstanceState: Bundle?) {

        super.onCreate(savedInstanceState)
        val type = intent.getSerializableExtra(KEY_TYPE) as FragmentType
        if (type != null) {
            setupToolBar(type.mResTitle, true)
          showSnack(type.mResTitle)
            addContent(getFragmentByType(type))
        }
        mCollapsingLinearLayout.visibility = View.GONE
    }
    fun showSnack(mensaje:Int) {
        val snackbar = Snackbar.make(mContext.findViewById(android.R.id.content), mensaje, Snackbar.LENGTH_LONG)
                .setAction("Action", null)

        snackbar.show()

    }
    private fun addContent(fragment: Fragment) {
        val fragmentTransaction = fragmentManager.beginTransaction()
        fragmentTransaction.replace(R.id.fragment_container, fragment)
        fragmentTransaction.commit()
    }

    private fun getFragmentByType(type: FragmentType): Fragment {
        var fragment: Fragment? = null
        when (type) {

            FragSettingsActivity.FragmentType. mSelectApps -> fragment =BixbyKeyFragment()
        }
        return fragment
    }

    enum class FragmentType constructor(internal var mResTitle: Int) : Serializable {
        mSelectApps(R.string.global_action_app_select),

    }

    companion object {
        val KEY_TYPE = "FRAGMENT_TYPE"
    }


}

