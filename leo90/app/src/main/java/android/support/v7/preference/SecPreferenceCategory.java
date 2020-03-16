package android.support.v7.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ViewGroup.LayoutParams;
import android.widget.TextView;


public class SecPreferenceCategory extends PreferenceCategory {
    String headerDesc;

    public SecPreferenceCategory(Context context) {
        this(context, null);
    }

    public SecPreferenceCategory(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16842892);
    }

    public SecPreferenceCategory(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public SecPreferenceCategory(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(", ");
        stringBuilder.append(context.getString(2131890373));
        this.headerDesc = stringBuilder.toString();
        if (attributeSet != null) {

        }
    }

    public void onBindViewHolder(PreferenceViewHolder preferenceViewHolder) {
        super.onBindViewHolder(preferenceViewHolder);
        if (preferenceViewHolder.itemView instanceof TextView) {
            TextView textView = (TextView) preferenceViewHolder.itemView;
            String charSequence = textView.getText().toString();
            if (TextUtils.isEmpty(charSequence)) {
                LayoutParams layoutParams = textView.getLayoutParams();
                layoutParams.height = 0;
                textView.setLayoutParams(layoutParams);
                return;
            }
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(charSequence);
            stringBuilder.append(this.headerDesc);
            textView.setContentDescription(stringBuilder.toString());
        }
    }
}
