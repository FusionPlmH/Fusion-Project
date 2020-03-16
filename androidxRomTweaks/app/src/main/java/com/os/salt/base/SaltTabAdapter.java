/*
 * Copyright (C) 2019 Android Ice Cold Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.os.salt.base;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentPagerAdapter;
import com.leo.salt.fragment.KeyguardCarrierFragment;
import com.leo.salt.fragment.PulldownCarrierFragment;
import com.leo.salt.fragment.StatusBarCarrierFragment;

public class SaltTabAdapter extends FragmentPagerAdapter {
    public SaltTabAdapter(FragmentManager fm) {
        super(fm);
    }
    @Override
    public CharSequence getPageTitle(int position) {
        return mFragments[position];
    }
    @Override
    public int getCount() {
        return mFragments.length;
    }

    @Override
    public float getPageWidth(int position) {
        return (1.0f);
    }

    @Override
    public Fragment getItem(int position) {
        switch (position) {
            case 2:
                return new KeyguardCarrierFragment();
            case 1:
                return new PulldownCarrierFragment();
            case 0:
                return new StatusBarCarrierFragment();
        }
        return null;

    }
}
