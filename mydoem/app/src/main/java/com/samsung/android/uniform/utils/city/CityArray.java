package com.samsung.android.uniform.utils.city;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;

public class CityArray extends ArrayList<City> {
    public boolean isContainCity(String cityName) {
        if (TextUtils.isEmpty(cityName)) {
            return false;
        }
        Iterator it = iterator();
        while (it.hasNext()) {
            City item = (City) it.next();
            if (!TextUtils.isEmpty(item.getName()) && cityName.equals(item.getName())) {
                return true;
            }
        }
        return false;
    }

    public int indexOfCity(String cityName) {
        if (TextUtils.isEmpty(cityName)) {
            return -1;
        }
        int i = 0;
        while (i < size()) {
            if (!TextUtils.isEmpty(((City) get(i)).getName()) && cityName.equals(((City) get(i)).getName())) {
                return i;
            }
            i++;
        }
        return -1;
    }
}
