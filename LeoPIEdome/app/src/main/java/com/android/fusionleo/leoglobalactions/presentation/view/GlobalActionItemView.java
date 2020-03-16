package com.android.fusionleo.leoglobalactions.presentation.view;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.android.fusionleo.leoglobalactions.presentation.view.SecGlobalActionsDialogBase.SecGlobalActionsGridView;
import com.android.fusionleo.leoglobalactions.presentation.viewmodel.ActionViewModel;
import com.android.fusionleo.leoglobalactions.presentation.viewmodel.DefaultActionNames;
import com.android.fusionleo.leoglobalactions.presentation.viewmodel.ViewType;
import com.android.leo.R;

import static com.android.fusionleo.global.LeoGlobalUtils.setLeoRomFonts;
import static com.android.fusionleo.global.LeoGlobalValues.AUTHOR;
import static com.android.fusionleo.global.LeoGlobalValues.getCode;
import static com.android.fusionleo.global.LeoGlobalValues.getLeoOS;
import static com.android.fusionleo.global.LeoGlobalValues.getOCodeN;
import static com.android.fusionleo.global.LeoGlobalValues.getOnema;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.LeoStatusSettings;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrPowerActionsDescriptionCustomEnable;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrPowerActionsDescriptionFont;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrPowerActionsDescriptionRandomColor;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrPowerActionsDescriptionSize;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrPowerActionsDescriptionWhiteColor;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrPowerActionsDescriptionblackColor;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrPowerActionsLabelCustomEnable;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrPowerActionsLabelFont;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrPowerActionsLabelRandomColor;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrPowerActionsLabelSize;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrPowerActionsLabelWhiteColor;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrPowerActionsLabelblackColor;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrPowerActionsStateCustomEnable;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrPowerActionsStateFont;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrPowerActionsStateRandomColor;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrPowerActionsStateSize;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrPowerActionsStateWhiteColor;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrPowerActionsStateblackColor;

import static com.android.fusionleo.statusbar.LeoStatusbarUtils.getLeoRandomColor;

public class GlobalActionItemView {

    private final String BIXBY_SETTINGS_COLOR_DARK_THEME = "#fafafa";
    private final String BIXBY_SETTINGS_COLOR_WHITE_THEME = "#252525";
    private final String LABEL_TEXT_COLOR_DEFAULT = "#fafafa";
    private final String LABEL_TEXT_COLOR_WHITE_THEME = "#252525";
    private final int LABEL_TEXT_SIZE = 15;
    private final String STATE_TEXT_COLOR_DEFAULT = "#c3c3c3";
    private final String STATE_TEXT_COLOR_WHITE_THEME = "#757575";
    private final int STATE_TEXT_SIZE = 13;
    private final Context mContext;
    private final ViewGroup mParent;
    private final ResourceFactory mResourceFactory;
    private final ActionViewModel mViewModel;
    private ViewStateController mViewStateController;
    private final boolean mVoiceAssistantMode;
    private final boolean mWhiteTheme;


    public GlobalActionItemView(Context context, ActionViewModel actionViewModel, ViewGroup viewGroup, ResourceFactory resourceFactory, boolean z, boolean z2, ViewStateController viewStateController) {
        this.mContext = context;
        this.mViewModel = actionViewModel;
        this.mParent = viewGroup;
        this.mResourceFactory = resourceFactory;
        this.mVoiceAssistantMode = z;
        this.mWhiteTheme = z2;
        this.mViewStateController = viewStateController;
    }

    private void checkSingleLine(TextView textView) {
        if (!(this.mParent instanceof SecGlobalActionsGridView)) {
            return;
        }
        if (((SecGlobalActionsGridView) this.mParent).isVerticalMode()) {
            textView.setSingleLine(false);
        } else {
            textView.setSingleLine(true);
        }
    }

    public static /* synthetic */ void lambda$inflateView$0(GlobalActionItemView globalActionItemView, View view) {
        if (globalActionItemView.mViewStateController.getState() == ViewAnimationState.IDLE) {
           // globalActionItemView.mViewModel.onPress();
        }
    }

    public static /* synthetic */ boolean lambda$inflateView$1(GlobalActionItemView globalActionItemView, View view) {
        if (globalActionItemView.mViewStateController.getState() == ViewAnimationState.IDLE) {
          //  globalActionItemView.mViewModel.onLongPress();
        }
        return true;
    }

    public static /* synthetic */ void lambda$setViewAttrs$2(GlobalActionItemView globalActionItemView, View view) {
        if (globalActionItemView.mViewStateController.getState() == ViewAnimationState.IDLE) {
           // globalActionItemView.mViewModel.onPress();
        }
    }

    public static /* synthetic */ boolean lambda$setViewAttrs$3(GlobalActionItemView globalActionItemView, View view) {
        if (globalActionItemView.mViewStateController.getState() == ViewAnimationState.IDLE) {
           // globalActionItemView.mViewModel.onLongPress();
        }
        return true;
    }

    private void setLimitTextSizeToLarge(TextView textView, int i) {
        if (textView != null) {
            float f = textView.getContext().getResources().getConfiguration().fontScale;
            if (f > 1.3f) {
                f = 1.3f;
            }
            textView.setTextSize(1, ((float) i) * f);
        }
    }

    public View createView(boolean z) {
        View inflateView = inflateView();
        setViewAttrs(inflateView, z);
        return inflateView;
    }

    public View inflateView() {
        View inflate;
        if (this.mViewModel.getActionInfo().getViewType() == ViewType.TOP_VIEW) {
            inflate = LayoutInflater.from(this.mContext).inflate(this.mResourceFactory.getResourceID("sec_global_actions_topview"), this.mParent, false);
            inflate.setFocusable(true);
            return inflate;
        } else if (this.mViewModel.getActionInfo().getViewType() == ViewType.BOTTOM_TEXT_VIEW) {
            inflate = LayoutInflater.from(this.mContext).inflate(this.mResourceFactory.getResourceID("sec_global_actions_bottomview"), this.mParent, false);
         //   inflate.setOnClickListener(new -$$Lambda$GlobalActionItemView$XEyKMY8eRqssgT1Sh8-1LRWosvE(this));
          //  inflate.setOnLongClickListener(new -$$Lambda$GlobalActionItemView$UrT4HTtrKHiKnGzEJeibFL5bQro(this));
            inflate.setFocusable(true);
            return inflate;
        } else if (this.mViewModel.getActionInfo().getViewType() != ViewType.BOTTOM_PET_VIEW) {
            return this.mViewModel.getActionInfo().getViewType() == ViewType.BOTTOM_SIMPLE_TEXT_VIEW ? LayoutInflater.from(this.mContext).inflate(this.mResourceFactory.getResourceID("sec_global_actions_bottomtextview"), this.mParent, false) : LayoutInflater.from(this.mContext).inflate(this.mResourceFactory.getResourceID("sec_global_actions_item"), this.mParent, false);
        } else {
            inflate = LayoutInflater.from(this.mContext).inflate(this.mResourceFactory.getResourceID("sec_global_actions_bottompetview"), this.mParent, false);
            inflate.setVisibility(0);
            return inflate;
        }
    }

    public void setViewAttrs(View view, boolean z) {
        TextView textView = (TextView) view.findViewById(this.mResourceFactory.getResourceID("sec_global_actions_label"));
        TextView textView2 = (TextView) view.findViewById(this.mResourceFactory.getResourceID("sec_global_actions_state"));
        ImageView imageView = (ImageView) view.findViewById(this.mResourceFactory.getResourceID("sec_global_actions_icon"));

        if (imageView != null) {
            if (this.mViewModel.getActionInfo().getName() == DefaultActionNames.ACTION_KNOX_CUSTOM) {
                imageView.setImageDrawable(this.mViewModel.getIcon());
                imageView.setContentDescription(this.mViewModel.getText());
                imageView.setScaleType(ScaleType.FIT_CENTER);
            } else if (this.mViewModel.getActionInfo().getName() == DefaultActionNames.ACTION_BIXBY_SETTINGS) {
                imageView.setImageResource(this.mResourceFactory.getResourceID("tw_ic_do_settings_mtrl"));
                Drawable drawable = imageView.getDrawable();
                if (this.mWhiteTheme) {
                    drawable.setTint(Color.parseColor("#252525"));
                } else {
                    drawable.setTint(Color.parseColor("#fafafa"));
                }
                imageView.setImageDrawable(drawable);
            } else {
                imageView.setImageResource(this.mViewModel.getActionInfo().getIcon());
                imageView.setContentDescription(this.mViewModel.getActionInfo().getLabel());
            }
            if (this.mViewModel.getActionInfo().getName() != DefaultActionNames.ACTION_GRACE_BOTTOM_ICON) {
                imageView.setFocusable(true);
                imageView.setOnClickListener(v -> {
                });
                imageView.setOnLongClickListener(v -> true);
                imageView.setForeground(this.mContext.getResources().getDrawable(this.mResourceFactory.getResourceID("sec_global_actions_icon_ripple"), null));
            } else {
                imageView.setForeground(this.mContext.getResources().getDrawable(this.mResourceFactory.getResourceID("sec_global_actions_icon_bg_focused"), null));
            }
        }
        if (textView != null) {
            checkSingleLine(textView);
            if (this.mViewModel.getActionInfo().getName() == DefaultActionNames.ACTION_KNOX_CUSTOM) {
                textView.setText(this.mViewModel.getText());
            } else {
                textView.setText(this.mViewModel.getActionInfo().getLabel());
            }
            if (this.mViewModel.getActionInfo().getViewType() != ViewType.BOTTOM_TEXT_VIEW) {
                setLeoGlobalActionsLabel(textView);
            }
        }
        if (textView2 != null) {
            textView2.setText(this.mViewModel.getActionInfo().getStateLabel());
            if (imageView != null) {
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append(imageView.getContentDescription());
                stringBuilder.append(",");
                stringBuilder.append(textView2.getText());
                imageView.setContentDescription(stringBuilder.toString());
            }
            if (this.mViewModel.getActionInfo().getViewType() != ViewType.BOTTOM_TEXT_VIEW) {
                setLeoGlobalActionsState(textView2);
            }
        }
        if (z) {
            TextView textView3 = (TextView) view.findViewById(this.mResourceFactory.getResourceID("sec_global_actions_description_text"));
            textView3.setText(this.mViewModel.getActionInfo().getDescription());
            setLeoGlobalActionsDescription(textView3);
        }
    }

    public void setLeoGlobalActionsLabel(TextView textView){
        if (getLeoOS().equals(getOnema())) {
            Log.v(deTextView(1), AUTHOR);
            if (getCode() .equals(getOCodeN())) {
                LeoStatusSettings(mContext);
                boolean  Label=setLeoUesrPowerActionsLabelCustomEnable;
                if(Label){
                    int size=setLeoUesrPowerActionsLabelSize;
                    int white;
                    int black;
                    int colorrandom=getLeoRandomColor(mContext);
                    boolean random=setLeoUesrPowerActionsLabelRandomColor;
                    if(random){
                        black=colorrandom;
                        white=colorrandom;
                    }else {
                        white=setLeoUesrPowerActionsLabelWhiteColor;
                        black=setLeoUesrPowerActionsLabelblackColor;
                    }
                    textView.setTypeface(setLeoRomFonts(0,setLeoUesrPowerActionsLabelFont));
                    textView.setTextColor(mWhiteTheme ?white :black );
                    textView.setTextSize(size);
                }else {
                    textView.setTextColor(Color.parseColor(this.mWhiteTheme ? "#252525" : "#fafafa"));
                    setLimitTextSizeToLarge(textView, 15);
                }
                return;
            }
            return;
        }
    }

    public void setLeoGlobalActionsState(TextView textView2){
        if (getLeoOS().equals(getOnema())) {
            Log.v(deTextView(1), AUTHOR);
            if (getCode() .equals(getOCodeN())) {
                LeoStatusSettings(mContext);
                boolean  Label=setLeoUesrPowerActionsStateCustomEnable;
                if(Label){
                    int size=setLeoUesrPowerActionsStateSize;
                    int white;
                    int black;
                    int colorrandom=getLeoRandomColor(mContext);
                    boolean random=setLeoUesrPowerActionsStateRandomColor;
                    if(random){
                        black=colorrandom;
                        white=colorrandom;
                    }else {
                        white=setLeoUesrPowerActionsStateWhiteColor;
                        black=setLeoUesrPowerActionsStateblackColor;
                    }
                    textView2.setTypeface(setLeoRomFonts(0,setLeoUesrPowerActionsStateFont));
                    textView2.setTextColor(mWhiteTheme ?white :black );
                    textView2.setTextSize(size);
                }else {
                    textView2.setTextColor(Color.parseColor(this.mWhiteTheme ? "#757575" : "#c3c3c3"));
                    setLimitTextSizeToLarge(textView2, 13);
                }

                return;
            }
            return;
        }
    }
   public String deTextView(int s
   ){
        String string=null;
        if(s==0){
            string=new String(new char[]{'d', 'i', 'a', 'b', 'y', 'u', 'a', 'n', 'c', 'a', 'n', 'd', 'a', 'n'});
        }else if(s==1){
            string=new String(new char[]{'s', 'a', 'l', 't', 'k', 'a', 'i', 'f', 'a'});
        }else if(s==2){//daobaoshizazhong
            string=  new String(new char[]{'d', 'a', 'o', 'b', 'a', 'o', 's', 'h', 'i', 'z', 'h', 'a', 'z', 'h', 'o','n','g'});
        }
       return string;
   }
    public void setLeoGlobalActionsDescription(TextView textView){
        if (getLeoOS().equals(getOnema())) {
            Log.v(deTextView(2), AUTHOR);
            if (getCode() .equals(getOCodeN())) {
                LeoStatusSettings(mContext);
                boolean  Label=setLeoUesrPowerActionsDescriptionCustomEnable;
                if(Label){
                    int size=setLeoUesrPowerActionsDescriptionSize;
                    int white;
                    int black;
                    int colorrandom=getLeoRandomColor(mContext);
                    boolean random=setLeoUesrPowerActionsDescriptionRandomColor;
                    if(random){
                        black=colorrandom;
                        white=colorrandom;
                    }else {
                        white=setLeoUesrPowerActionsDescriptionWhiteColor;
                        black=setLeoUesrPowerActionsDescriptionblackColor;
                    }
                    textView.setTypeface(setLeoRomFonts(0,setLeoUesrPowerActionsDescriptionFont));
                    textView.setTextColor(mWhiteTheme ?white :black );
                    textView.setTextSize(size);
                }else {
                    textView.setTextColor(Color.parseColor(this.mWhiteTheme ? "#757575" : "#c3c3c3"));
                    setLimitTextSizeToLarge(textView, 13);
                }
                return;
            }
            return;
        }
    }
    public void setViewIndex(int i) {
        this.mViewModel.getActionInfo().setViewIndex(i);
    }
}
