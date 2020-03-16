package com.android.fusionleo.leoglobalactions.presentation.view;

import android.annotation.TargetApi;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.hardware.display.DisplayManager;
import android.os.Build;
import android.os.RemoteException;
import android.os.ServiceManager;

import android.util.Log;
import android.view.ContextThemeWrapper;
import android.view.IRotationWatcher.Stub;
import android.view.IWindowManager;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.Window;
import android.view.WindowManager;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.android.fusionleo.leoglobalactions.presentation.SecGlobalActionsPresenter;
import com.android.fusionleo.leoglobalactions.presentation.strategies.WindowDecorationStrategy;
import com.android.fusionleo.leoglobalactions.presentation.view.SecGlobalActionsAnimator.ViewUpdateCallback;
import com.android.fusionleo.leoglobalactions.presentation.view.SecGlobalActionsAnimatorFSM.Event;
import com.android.fusionleo.leoglobalactions.presentation.viewmodel.ActionViewModel;
import com.android.fusionleo.leoglobalactions.presentation.viewmodel.DefaultActionNames;
import com.android.fusionleo.leoglobalactions.presentation.viewmodel.ViewType;
import com.android.fusionleo.leoglobalactions.util.ConditionChecker;

import com.android.fusionleo.leoglobalactions.util.SystemConditions;
import java.util.ArrayList;
import java.util.List;

import static com.android.fusionleo.global.LeoGlobalValues.getCode;
import static com.android.fusionleo.global.LeoGlobalValues.getLeoOS;
import static com.android.fusionleo.global.LeoGlobalValues.getOCodeN;
import static com.android.fusionleo.global.LeoGlobalValues.getOnema;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.LeoStatusSettings;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrPowerIconNumberCustomLandscape;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrPowerIconNumberCustomPortrait;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrPowerPowerIconNumberCustomEnabled;

public abstract class SecGlobalActionsDialogBase implements ExtendableGlobalActionsView, ViewStateController {
    private static final int LAND_NUM_COLUMNS_4_ITEMS = 2;
    private static final int LAND_NUM_COLUMNS_MORE_THAN_4_ITEMS = 3;
    private static final int PORT_NUM_COLUMNS_DEFAULT = 1;
    private static final int PORT_NUM_COLUMNS_MORE_THEN_4_ITEMS = 2;
    private static final int REFERENCE_NUM_ITEMS = 4;
    private static final String TAG = "SecGlobalActionsDialogBase";
    protected final float DEFAULT_DIM_AMOUNT = 0.75f;
    private SecGlobalActionsAnimator mAnimator;
    private ViewUpdateCallback mAnimatorCallback = new ViewUpdateCallback() {
        public GlobalActionItemView createConfirmView() {
            GlobalActionItemView globalActionItemView = new GlobalActionItemView(SecGlobalActionsDialogBase.this.mContext, SecGlobalActionsDialogBase.this.mSelectedViewModel, SecGlobalActionsDialogBase.this.mConfirmationView, SecGlobalActionsDialogBase.this.mResourceFactory, SecGlobalActionsDialogBase.this.mIsVoiceAssistantMode, SecGlobalActionsDialogBase.this.mIsWhiteTheme, SecGlobalActionsDialogBase.this.mViewStateController);
            SecGlobalActionsDialogBase.this.mConfirmationView.removeAllViews();
            SecGlobalActionsDialogBase.this.mConfirmationView.addView(globalActionItemView.createView(true));
            View findViewById = SecGlobalActionsDialogBase.this.mConfirmationView.findViewById(SecGlobalActionsDialogBase.this.mResourceFactory.getResourceID("sec_global_actions_state"));
            SecGlobalActionsDialogBase.this.mConfirmationView.setVisibility(0);
            getConfirmDescriptionView(SecGlobalActionsDialogBase.this.mConfirmationView).setVisibility(0);
            findViewById.setVisibility(8);
            return globalActionItemView;
        }

        public View getBottomView() {
            return SecGlobalActionsDialogBase.this.mBottomView;
        }

        public View getConfirmDescriptionView(ViewGroup viewGroup) {
            return viewGroup.findViewById(SecGlobalActionsDialogBase.this.mResourceFactory.getResourceID("sec_global_actions_description"));
        }

        public ViewGroup getConfirmIconLabelView(ViewGroup viewGroup) {
            return (ViewGroup) viewGroup.findViewById(SecGlobalActionsDialogBase.this.mResourceFactory.getResourceID("sec_global_actions_icon_label_view"));
        }

        public ViewGroup getConfirmationView() {
            return SecGlobalActionsDialogBase.this.mConfirmationView;
        }

        public Dialog getDialog() {
            return SecGlobalActionsDialogBase.this.mDialog;
        }

        public Runnable getDismissRunnable() {

            return null;
        }

        public ViewGroup getLandscapeListView() {
            return SecGlobalActionsDialogBase.this.mLandListView;
        }

        public ViewGroup getListView() {
            return SecGlobalActionsDialogBase.this.mListView;
        }

        public ViewGroup getPowerOffViewForSafeModeVI(GlobalActionItemView globalActionItemView) {


            return null;
        }

        public ViewGroup getRootView() {
            return SecGlobalActionsDialogBase.this.mRootView;
        }

        public ViewGroup getSelectedActionView(ViewGroup viewGroup) {
            return (ViewGroup) viewGroup.getChildAt(SecGlobalActionsDialogBase.this.mSelectedViewModel.getActionInfo().getViewIndex());
        }

        public boolean isSafeModeConfirm() {
            return SecGlobalActionsDialogBase.this.mSelectedViewModel.getActionInfo().getName().equals(DefaultActionNames.ACTION_SAFE_MODE);
        }

        public void requestFocusFor(ViewGroup viewGroup, ViewGroup viewGroup2) {

        }
    };
    protected SecGlobalActionsAnimatorFSM mAnimatorFSM;
    protected LinearLayout mBottomView;
    protected ConditionChecker mConditionChecker;
    private ViewGroup mConfirmationView;
    protected final Context mContext;
    protected Dialog mDialog;
    protected int mDialogStyle;

    private ActionViewAdapter mGridViewAdapter;

    private IWindowManager mIWindowManager;
    private boolean mIsVoiceAssistantMode;
    private boolean mIsWhiteTheme;
    private int mItemHorizontalSpacing;
    private int mItemVerticalSpacingLand;
    private int mItemVerticalSpacingPort;
    private int mItemWidthLand;
    protected SecGlobalActionsGridView mLandListView;
    protected SecGlobalActionsGridView mListView;

    private boolean mNeedToForceUpdate = false;
    protected SecGlobalActionsPresenter mPresenter;
    protected ResourceFactory mResourceFactory;
    protected final Resources mResources;
    protected SecGlobalActionsRootView mRootView;
    private Stub mRotationWatcher;
    private ActionViewModel mSelectedViewModel;
    protected LinearLayout mTopView;
    private ViewAnimationState mViewAnimationState;
    private ViewStateController mViewStateController;
    protected List<WindowDecorationStrategy> mWindowDecorationStrategies;

    public class ActionViewAdapter extends BaseAdapter {
        Context mContext;
        List<ActionViewModel> mViewModelList = new ArrayList();

        public ActionViewAdapter(Context context) {
            this.mContext = context;
        }

        private void setVerticalSpacing() {
            if (!SecGlobalActionsDialogBase.this.mConditionChecker.isEnabled(SystemConditions.IS_TABLET_DEVICE)) {
                if (SecGlobalActionsDialogBase.this.mListView.getChildCount() == 4) {
                    SecGlobalActionsDialogBase.this.mListView.setVerticalSpacing(this.mContext.getResources().getDimensionPixelSize(17105459));
                } else {
                    SecGlobalActionsDialogBase.this.mListView.setVerticalSpacing(SecGlobalActionsDialogBase.this.mItemVerticalSpacingPort);
                }
            }
        }

        public void addItem(ActionViewModel actionViewModel) {
            this.mViewModelList.add(actionViewModel);
        }

        public int getCount() {
            return this.mViewModelList.size();
        }

        public Object getItem(int i) {
            return this.mViewModelList.get(i);
        }

        public long getItemId(int i) {
            return (long) i;
        }

        public View getView(int i, View view, ViewGroup viewGroup) {
            GlobalActionItemView globalActionItemView = new GlobalActionItemView(this.mContext, (ActionViewModel) this.mViewModelList.get(i), viewGroup, SecGlobalActionsDialogBase.this.mResourceFactory, SecGlobalActionsDialogBase.this.mIsVoiceAssistantMode, SecGlobalActionsDialogBase.this.mIsWhiteTheme, SecGlobalActionsDialogBase.this.mViewStateController);
            if (view == null) {
                view = globalActionItemView.inflateView();
            }
            globalActionItemView.setViewAttrs(view, false);
            globalActionItemView.setViewIndex(i);
            return view;
        }

        public void resetItems() {
            this.mViewModelList.clear();
        }

        public void updateNumColumns() {
            LeoStatusSettings(mContext);
            int size = this.mViewModelList.size();
            if (size < 4) {
                SecGlobalActionsDialogBase.this.mListView.setNumColumns(1);
            } else {
                SecGlobalActionsDialogBase.this.mListView.setNumColumns(setLeoUesrPowerIconNumberCustomPortrait);
            }
            if (size < 4) {
                SecGlobalActionsDialogBase.this.mLandListView.setNumColumns(size);
            } else if (size == 4) {
                SecGlobalActionsDialogBase.this.mLandListView.setNumColumns(2);
            } else {
                SecGlobalActionsDialogBase.this.mLandListView.setNumColumns( setLeoUesrPowerIconNumberCustomLandscape);
            }
            setVerticalSpacing();
        }



    }



    class ActionsDialog extends Dialog implements DialogInterface {
        public ActionsDialog(Context context) {
            super(context);
            setCanceledOnTouchOutside(true);
        }

        public ActionsDialog(Context context, int i) {
            super(context, i);
            setCanceledOnTouchOutside(true);
        }

        public void cancel() {
            if (SecGlobalActionsDialogBase.this.getState() == ViewAnimationState.IDLE) {
                SecGlobalActionsDialogBase.this.mPresenter.onCancelDialog();
            }
        }

        public void show() {
            super.show();
            boolean z = true;
            if (SecGlobalActionsDialogBase.this.mContext.getResources().getConfiguration().orientation != 1) {
                z = false;
            }
            SecGlobalActionsDialogBase.this.mAnimatorFSM.setOrientation(z);
            SecGlobalActionsDialogBase.this.mAnimatorFSM.handleAnimationEvent(Event.SHOW);
        }
    }

    public class SecGlobalActionsGridView extends GridView {
        boolean mIsVerticalMode;

        public SecGlobalActionsGridView(Context context, boolean z) {
            super(context);
            this.mIsVerticalMode = z;
            setHorizontalSpacing(SecGlobalActionsDialogBase.this.mItemHorizontalSpacing);
            if (z) {
                setVerticalSpacing(SecGlobalActionsDialogBase.this.mItemVerticalSpacingPort);
            } else {
                setVerticalSpacing(SecGlobalActionsDialogBase.this.mItemVerticalSpacingLand);
                setColumnWidth(SecGlobalActionsDialogBase.this.mItemWidthLand);
            }
            setFocusable(false);
            setVerticalScrollBarEnabled(false);
        }

        public boolean isVerticalMode() {
            return this.mIsVerticalMode;
        }

        public boolean onTouchEvent(MotionEvent motionEvent) {
            return motionEvent.getAction() == 0 ? false : super.onTouchEvent(motionEvent);
        }
    }

    public class SecGlobalActionsRootView extends FrameLayout {
        public SecGlobalActionsRootView(Context context) {
            super(context);
            addView(View.inflate(context, SecGlobalActionsDialogBase.this.mResourceFactory.getResourceID("sec_global_actions_wrapped"), null));
        }

        private void setBottomTextViewMargin() {
            if (SecGlobalActionsDialogBase.this.mBottomView != null && SecGlobalActionsDialogBase.this.mBottomView.getChildCount() > 0) {
                Object obj = 1;
                if (mContext.getResources().getConfiguration().orientation != 1) {
                    obj = null;
                }
                LinearLayout linearLayout = (LinearLayout) SecGlobalActionsDialogBase.this.mBottomView.findViewById(SecGlobalActionsDialogBase.this.mResourceFactory.getResourceID("sec_global_actions_bottomtextview_id"));
                setLeoBottomTextView(linearLayout);
                if (linearLayout != null) {
                    MarginLayoutParams marginLayoutParams = (MarginLayoutParams) linearLayout.getLayoutParams();
                    if (obj != null) {
                        marginLayoutParams.bottomMargin =mContext.getResources().getDimensionPixelSize(SecGlobalActionsDialogBase.this.mResourceFactory.getResourceID("sec_global_actions_bottomtextview_bottom_margin_portrait"));
                    } else {
                        marginLayoutParams.bottomMargin =mContext.getResources().getDimensionPixelSize(SecGlobalActionsDialogBase.this.mResourceFactory.getResourceID("sec_global_actions_bottomtextview_bottom_margin_landscape"));
                    }
                    linearLayout.setLayoutParams(marginLayoutParams);
                }
            }
        }
        public void  setLeoBottomTextView( LinearLayout linearLayout){
            linearLayout.setVisibility(GONE);
        }
    }
        private void setGridViewMargin() {
            if (SecGlobalActionsDialogBase.this.mBottomView.getChildCount() != 0) {
                MarginLayoutParams marginLayoutParams = (MarginLayoutParams) SecGlobalActionsDialogBase.this.mListView.getLayoutParams();
                marginLayoutParams.bottomMargin = SecGlobalActionsDialogBase.this.mBottomView.getHeight() + (this.mContext.getResources().getDimensionPixelSize(17105454) * 3);
                SecGlobalActionsDialogBase.this.mListView.setLayoutParams(marginLayoutParams);
                marginLayoutParams = (MarginLayoutParams) SecGlobalActionsDialogBase.this.mLandListView.getLayoutParams();
                marginLayoutParams.bottomMargin = SecGlobalActionsDialogBase.this.mBottomView.getHeight();
                SecGlobalActionsDialogBase.this.mLandListView.setLayoutParams(marginLayoutParams);
            }
        }

        private void setLandListViewWidth() {
            ViewGroup.LayoutParams layoutParams = SecGlobalActionsDialogBase.this.mLandListView.getLayoutParams();
            layoutParams.width = (SecGlobalActionsDialogBase.this.mItemWidthLand * SecGlobalActionsDialogBase.this.mLandListView.getNumColumns()) + (SecGlobalActionsDialogBase.this.mItemHorizontalSpacing * (SecGlobalActionsDialogBase.this.mLandListView.getNumColumns() - 1));
            SecGlobalActionsDialogBase.this.mLandListView.setLayoutParams(layoutParams);
        }

        @TargetApi(Build.VERSION_CODES.JELLY_BEAN)
        private void setListViewHeight() {
            if (SecGlobalActionsDialogBase.this.mListView.getNumColumns() == 2) {
                int i;
                int i2 = 0;
                int i3 = 0;
                int i4 = 0;
                for (i = 0; i < SecGlobalActionsDialogBase.this.mListView.getChildCount(); i++) {
                    if (i % 2 == 0) {
                        i2 += SecGlobalActionsDialogBase.this.mListView.getChildAt(i).getHeight();
                        i4++;
                    } else {
                        i3 += SecGlobalActionsDialogBase.this.mListView.getChildAt(i).getHeight();
                    }
                }
                i = (i2 > i3 ? i2 : i3) + (SecGlobalActionsDialogBase.this.mListView.getVerticalSpacing() * (i4 - 1));
                if (i < (SecGlobalActionsDialogBase.this.mRootView.getHeight() - SecGlobalActionsDialogBase.this.mRootView.getPaddingBottom()) - ((MarginLayoutParams) SecGlobalActionsDialogBase.this.mListView.getLayoutParams()).bottomMargin) {
                    ViewGroup.LayoutParams layoutParams = SecGlobalActionsDialogBase.this.mListView.getLayoutParams();
                    layoutParams.height = i;
                    SecGlobalActionsDialogBase.this.mListView.setLayoutParams(layoutParams);
                }
            }
        }

        private void setRootViewPadding() {

        }

        private void setTopViewMargin() {
            if (SecGlobalActionsDialogBase.this.mTopView != null && SecGlobalActionsDialogBase.this.mTopView.getChildCount() > 0) {
                Object obj = 1;
                if (this.mContext.getResources().getConfiguration().orientation != 1) {
                    obj = null;
                }
                ImageView imageView = (ImageView) SecGlobalActionsDialogBase.this.mTopView.findViewById(SecGlobalActionsDialogBase.this.mResourceFactory.getResourceID("sec_global_actions_icon"));
                if (imageView != null) {
                    MarginLayoutParams marginLayoutParams = (MarginLayoutParams) imageView.getLayoutParams();
                    if (obj != null) {
                        marginLayoutParams.topMargin = this.mContext.getResources().getDimensionPixelSize(SecGlobalActionsDialogBase.this.mResourceFactory.getResourceID("sec_global_actions_bixby_settings_top_margin"));
                        marginLayoutParams.rightMargin = this.mContext.getResources().getDimensionPixelSize(SecGlobalActionsDialogBase.this.mResourceFactory.getResourceID("sec_global_actions_bixby_settings_right_margin"));
                    } else {
                        marginLayoutParams.topMargin = this.mContext.getResources().getDimensionPixelSize(SecGlobalActionsDialogBase.this.mResourceFactory.getResourceID("sec_global_actions_bixby_settings_top_margin_land"));
                        marginLayoutParams.rightMargin = this.mContext.getResources().getDimensionPixelSize(SecGlobalActionsDialogBase.this.mResourceFactory.getResourceID("sec_global_actions_bixby_settings_right_margin_land"));
                    }
                    imageView.setLayoutParams(marginLayoutParams);
                }
            }
        }


    public SecGlobalActionsDialogBase(Context context, ResourceFactory resourceFactory) {
        this.mContext = new ContextThemeWrapper(context, 16974123);
        this.mResourceFactory = resourceFactory;
        this.mResources = this.mContext.getResources();

        this.mWindowDecorationStrategies = new ArrayList();
        this.mDialogStyle = 0;
        this.mViewAnimationState = ViewAnimationState.IDLE;
        this.mViewStateController = this;
    }

    private void awakenIfNecessary() {

    }

    private void initContentView() {
        this.mRootView = new SecGlobalActionsRootView(this.mContext);
        ViewGroup viewGroup = (ViewGroup) this.mRootView.findViewById(this.mResourceFactory.getResourceID("sec_global_actions_item_list"));
        this.mListView = new SecGlobalActionsGridView(this.mContext, true);
        viewGroup.addView(this.mListView);
        ViewGroup viewGroup2 = (ViewGroup) this.mRootView.findViewById(this.mResourceFactory.getResourceID("sec_global_actions_item_list_land"));
        this.mLandListView = new SecGlobalActionsGridView(this.mContext, false);
        viewGroup2.addView(this.mLandListView);
        this.mTopView = (LinearLayout) this.mRootView.findViewById(this.mResourceFactory.getResourceID("sec_global_actions_top"));
        this.mBottomView = (LinearLayout) this.mRootView.findViewById(this.mResourceFactory.getResourceID("sec_global_actions_bottom"));
        this.mConfirmationView = (ViewGroup) this.mRootView.findViewById(this.mResourceFactory.getResourceID("sec_global_actions_confirmation"));
        this.mIsVoiceAssistantMode = this.mConditionChecker.isEnabled(SystemConditions.IS_VOICE_ASSISTANT_MODE);
        this.mIsWhiteTheme = this.mConditionChecker.isEnabled(SystemConditions.IS_WHITE_THEME);
        this.mGridViewAdapter = new ActionViewAdapter(this.mContext);
        this.mListView.setAdapter(this.mGridViewAdapter);
        this.mLandListView.setAdapter(this.mGridViewAdapter);
        this.mDialog.setContentView(this.mRootView);
    }

    private void initDimens() {

    }

    public static /* synthetic */ void lambda$dismiss$2(SecGlobalActionsDialogBase secGlobalActionsDialogBase) {
        if (secGlobalActionsDialogBase.mDialog != null && secGlobalActionsDialogBase.getState() == ViewAnimationState.IDLE) {

            secGlobalActionsDialogBase.mDialog.dismiss();
            secGlobalActionsDialogBase.mDialog = null;
            if (secGlobalActionsDialogBase.mRotationWatcher != null) {
                try {
                    secGlobalActionsDialogBase.mIWindowManager.removeRotationWatcher(secGlobalActionsDialogBase.mRotationWatcher);
                    secGlobalActionsDialogBase.mRotationWatcher = null;
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
            secGlobalActionsDialogBase.mPresenter.onDismiss();
        }
    }

    public static /* synthetic */ void lambda$show$0(SecGlobalActionsDialogBase secGlobalActionsDialogBase, boolean z, boolean z2, boolean z3) {
        if (secGlobalActionsDialogBase.mPresenter.onStart(z, z2, z3)) {
            secGlobalActionsDialogBase.showDialog();
        }
    }

    private void prepareWindow(Window window) {

    }

    private void registerRotationWatcher() {

    }

    public void addWindowDecorator(WindowDecorationStrategy windowDecorationStrategy) {
        this.mWindowDecorationStrategies.add(windowDecorationStrategy);
    }

    public void cancelConfirming() {
        this.mAnimatorFSM.handleAnimationEvent(Event.HIDE_CONFIRM);
    }

    public void dismiss() {

    }

    public void dismissWithAnimation() {
        if (this.mAnimatorFSM != null) {
            this.mAnimatorFSM.handleAnimationEvent(Event.HIDE);
        }
    }

    public void forceRequestLayout() {
        this.mNeedToForceUpdate = true;
    }

    public ViewAnimationState getState() {
        return this.mViewAnimationState;
    }

    public void hideDialogOnSecureConfirm() {
        this.mAnimatorFSM.handleAnimationEvent(Event.SECURE_CONFIRM);
    }

    public void notifyDataSetChanged() {
        this.mGridViewAdapter.notifyDataSetChanged();
    }

    public void setState(ViewAnimationState viewAnimationState) {
        this.mViewAnimationState = viewAnimationState;
    }

    public void show(boolean z, boolean z2, boolean z3) {

    }

    public void showActionConfirming(ActionViewModel actionViewModel) {
        this.mSelectedViewModel = actionViewModel;
        this.mAnimatorFSM.handleAnimationEvent(Event.SHOW_CONFIRM);
    }

    void showDialog() {

        awakenIfNecessary();
        if (this.mDialogStyle != 0) {
            this.mDialog = new ActionsDialog(this.mContext, this.mDialogStyle);
        } else {
            this.mDialog = new ActionsDialog(this.mContext);
        }
        initDimens();
        initContentView();
        prepareWindow(this.mDialog.getWindow());
        updateViewList();

    }

    public void updateViewList() {
        if (!(this.mTopView == null || this.mTopView.getChildCount() == 0)) {
            this.mTopView.removeAllViews();
        }
        if (!(this.mBottomView == null || this.mBottomView.getChildCount() == 0)) {
            this.mBottomView.removeAllViews();
        }
        this.mGridViewAdapter.resetItems();
        for (ActionViewModel actionViewModel : this.mPresenter.getValidActions()) {
            if (this.mTopView != null && actionViewModel.getActionInfo().getViewType() == ViewType.TOP_VIEW) {
                this.mTopView.addView(new GlobalActionItemView(this.mContext, actionViewModel, this.mTopView, this.mResourceFactory, this.mIsVoiceAssistantMode, this.mIsWhiteTheme, this).createView(false));
            } else if (this.mBottomView == null || !(actionViewModel.getActionInfo().getViewType() == ViewType.BOTTOM_TEXT_VIEW || actionViewModel.getActionInfo().getViewType() == ViewType.BOTTOM_PET_VIEW || actionViewModel.getActionInfo().getViewType() == ViewType.BOTTOM_SIMPLE_TEXT_VIEW)) {
                this.mGridViewAdapter.addItem(actionViewModel);
            } else {
                this.mBottomView.addView(new GlobalActionItemView(this.mContext, actionViewModel, this.mBottomView, this.mResourceFactory, this.mIsVoiceAssistantMode, this.mIsWhiteTheme, this).createView(false));
            }
        }
        this.mGridViewAdapter.updateNumColumns();
        notifyDataSetChanged();
    }
}
