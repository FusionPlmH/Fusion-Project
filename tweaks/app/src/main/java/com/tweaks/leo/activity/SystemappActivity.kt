package com.tweaks.leo.activity

import android.app.Fragment

import android.os.Bundle
import android.support.v7.widget.Toolbar
import android.view.MenuItem
import android.view.View

import com.tweaks.leo.R
import com.tweaks.leo.base.BaseActivity
import com.tweaks.leo.kt.FragmentApplistions
import com.tweaks.leo.kt.FragmentPerformance
import com.tweaks.leo.kt.ImgFragment
import com.tweaks.leo.theme.Utils
import com.tweaks.leo.utils.AndroidUtils
import com.tweaks.leo.utils.Constants
import com.tweaks.leo.utils.root.Helpers
import com.tweaks.leo.widget.DialogUtil.Promptdonate


class SystemappActivity : BaseActivity() {
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
