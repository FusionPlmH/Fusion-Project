package com.sldv;

import android.content.ClipData;
import android.content.ClipDescription;
import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.DragEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;

import java.util.List;

/**
 * Created by yuyidong on 15/9/30.
 */
public class DragListView<T> extends ListView implements View.OnDragListener {
    /* 移动距离 */
    private final int DRAG_SCROLL_PX_UNIT = 25;
    /* Handler */
    private Handler mScrollHandler;
    /* Handler的延时 */
    private final long SCROLL_HANDLER_DELAY_MILLIS = 5;
    /* 边界比例，到这个比例的位置就开始移动 */
    private final float BOUND_GAP_RATIO = 0.2f;
    /* 边界 */
    private int mTopScrollBound;
    private int mBottomScrollBound;
    /* 按下的时候的Y轴坐标 */
    private int mTouchDownForDragStartY;
    /* Move的时候的Y轴坐标 */
    private int mLastDragY;
    /* 是否进入了scroll的handler里面了 */
    private boolean mIsDragScrollerRunning = false;
    /* 判断drag往上还是往下 */
    private boolean mUp = false;
    /* 当前drag所在ListView中的位置 */
    private int mCurrentPosition;
    /* 之前drag所在ListView中的位置 */
    private int mBeforeCurrentPosition;
    /* 之前之前drag所在ListView中的位置 */
    private int mBeforeBeforePosition;
    /* 适配器 */
    protected BaseAdapter mSDAdapter;
    /* 数据 */
    protected List<T> mDataList;
    /* 监听器 */
    private OnDragListener mOnDragListener;

    public DragListView(Context context) {
        this(context, null);
    }

    public DragListView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    private float mTouchSlop;

    public DragListView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        super.setOnDragListener(this);
        mTouchSlop = ViewConfiguration.get(context).getScaledPagingTouchSlop();
    }

    private final Runnable mDragScroller = new Runnable() {
        @Override
        public void run() {
            if (mLastDragY <= mTopScrollBound) {
                smoothScrollBy(-DRAG_SCROLL_PX_UNIT, (int) SCROLL_HANDLER_DELAY_MILLIS);
            } else if (mLastDragY >= mBottomScrollBound) {
                smoothScrollBy(DRAG_SCROLL_PX_UNIT, (int) SCROLL_HANDLER_DELAY_MILLIS);
            }
            mScrollHandler.postDelayed(this, SCROLL_HANDLER_DELAY_MILLIS);
        }
    };

    @Override
    public boolean onInterceptTouchEvent(MotionEvent ev) {
        if (ev.getAction() == MotionEvent.ACTION_DOWN) {
            mTouchDownForDragStartY = (int) ev.getY();
        }
        return super.onInterceptTouchEvent(ev);
    }

    @Override
    public boolean onDrag(View v, DragEvent event) {
        final int action = event.getAction();
        switch (action) {
            case DragEvent.ACTION_DRAG_STARTED:
                return true;
            case DragEvent.ACTION_DRAG_ENTERED:
                final int boundGap = (int) (getHeight() * BOUND_GAP_RATIO);
                mTopScrollBound = (getTop() + boundGap);
                mBottomScrollBound = (getBottom() - boundGap);
                return true;
            case DragEvent.ACTION_DRAG_LOCATION:
                mLastDragY = (int) event.getY();
                //当前移动的item在ListView中的position
                int position = pointToPosition((int) event.getX(), (int) event.getY());
                //如果位置发生了改变
                if (mBeforeCurrentPosition != position) {
                    //有时候得到的position是-1(AdapterView.INVALID_POSITION)，忽略掉
                    if (position >= 0) {
                        //判断是往上了还是往下了
                        mUp = position - mBeforeCurrentPosition <= 0;
                        //记录移动之后上一次的位置
                        mBeforeBeforePosition = mBeforeCurrentPosition;
                        //记录当前位置
                        mBeforeCurrentPosition = position;
                    }
                }
                //判断是否需要上下移
                if (!mIsDragScrollerRunning &&
                        (Math.abs(mLastDragY - mTouchDownForDragStartY) >= 4 * mTouchSlop)) {
                    mIsDragScrollerRunning = true;
                    ensureScrollHandler();
                    mScrollHandler.postDelayed(mDragScroller, SCROLL_HANDLER_DELAY_MILLIS);
                }
                //有时候为-1(AdapterView.INVALID_POSITION)的情况，忽略掉
                if (position >= 0) {
                    //判断是不是已经换过位置了，如果没有换过，则进去换
                    if (position != mCurrentPosition) {
                        if (mUp) {//往上
                            int realPosition = position - getHeaderViewsCount();
                            if (realPosition >= 0 && realPosition < mDataList.size()) {//这里判断就忽略了drag到header的情况
                                //只是移动了一格
                                if (position - mBeforeBeforePosition == -1) {
                                    T t = mDataList.get(realPosition);
                                    mDataList.set(realPosition, mDataList.get(realPosition + 1));
                                    mDataList.set(realPosition + 1, t);
                                } else {//一下子移动了好几个位置，其实可以和上面那个方法合并起来的
                                    T t = mDataList.get(mBeforeBeforePosition - getHeaderViewsCount());
                                    for (int i = mBeforeBeforePosition - getHeaderViewsCount(); i > realPosition; i--) {
                                        mDataList.set(i, mDataList.get(i - 1));
                                    }
                                    mDataList.set(realPosition, t);
                                }
                                mSDAdapter.notifyDataSetChanged();
                                //更新位置
                                mCurrentPosition = position;
                            }
                        } else {
                            //header部分不算，footer部分不算
                            int realPosition = position - getHeaderViewsCount();
                            if (realPosition > 0 && realPosition < mDataList.size()) {
                                if (position - mBeforeBeforePosition == 1) {
                                    T t = mDataList.get(realPosition);
                                    mDataList.set(realPosition, mDataList.get(realPosition - 1));
                                    mDataList.set(realPosition - 1, t);
                                } else {
                                    T t = mDataList.get(mBeforeBeforePosition - getHeaderViewsCount());
                                    for (int i = mBeforeBeforePosition - getHeaderViewsCount(); i < realPosition; i++) {
                                        mDataList.set(i, mDataList.get(i + 1));
                                    }
                                    mDataList.set(realPosition, t);
                                }
                                mSDAdapter.notifyDataSetChanged();
                                //更新位置
                                mCurrentPosition = position;
                            }
                        }
                    }
                }
                if (mOnDragListener != null) {
                    mOnDragListener.onDragViewMoving(mCurrentPosition);
                }
                return true;
            case DragEvent.ACTION_DRAG_EXITED:
            case DragEvent.ACTION_DRAG_ENDED:
                mIsDragScrollerRunning = false;
                ensureScrollHandler();
                mScrollHandler.removeCallbacks(mDragScroller);
                mSDAdapter.notifyDataSetChanged();
                return true;
            case DragEvent.ACTION_DROP:
                mIsDragScrollerRunning = false;
                ensureScrollHandler();
                mScrollHandler.removeCallbacks(mDragScroller);
                mSDAdapter.notifyDataSetChanged();
                if (mOnDragListener != null) {
                    mOnDragListener.onDragViewDown(mCurrentPosition);
                }
                return true;
            default:
                break;
        }
        return false;
    }

    /**
     * 确保Handler
     */
    private void ensureScrollHandler() {
        if (mScrollHandler == null) {
            mScrollHandler = getHandler();
        }
        if (mScrollHandler == null) {
            mScrollHandler = new Handler();
        }
    }

    protected void setRawAdapter(ListAdapter adapter) {
        mSDAdapter = (BaseAdapter) adapter;
    }

    protected void setDragPosition(int position, boolean isWannaTransparentWhileDragging) {
        mCurrentPosition = position;
        mBeforeCurrentPosition = position;
        mBeforeBeforePosition = position;
        View view = getChildAt(position - getFirstVisiblePosition());
        if (mOnDragListener != null && view instanceof ItemMainLayout) {
            ItemMainLayout itemMainLayout = (ItemMainLayout) getChildAt(position - getFirstVisiblePosition());
            Drawable backgroundDrawable = itemMainLayout.getItemCustomView().getBackground();
            if (isWannaTransparentWhileDragging) {
                Compat.setBackgroundDrawable(itemMainLayout.getItemCustomView(), new ColorDrawable(Color.TRANSPARENT));
            }
            itemMainLayout.getItemLeftBackGroundLayout().setVisibility(GONE);
            itemMainLayout.getItemRightBackGroundLayout().setVisibility(GONE);
            ClipData.Item item = new ClipData.Item("1");
            ClipData data = new ClipData("1", new String[]{ClipDescription.MIMETYPE_TEXT_PLAIN}, item);
            itemMainLayout.startDrag(data, new View.DragShadowBuilder(itemMainLayout), null, 0);
            mOnDragListener.onDragViewStart(position);
            if (isWannaTransparentWhileDragging) {
                Compat.setBackgroundDrawable(itemMainLayout.getItemCustomView(), backgroundDrawable);
            }
        }
    }

    @Deprecated
    @Override
    public void setOnDragListener(View.OnDragListener l) {
    }

    /**
     * 设置drag的监听器，加入数据
     *
     * @param onDragListener
     * @param dataList
     */
    public void setOnDragListener(OnDragListener onDragListener, List<T> dataList) {
        mOnDragListener = onDragListener;
        mDataList = dataList;
    }

    /**
     * 更新数据
     *
     * @param dataList
     */
    public void updateDataList(List<T> dataList) {
        mDataList = dataList;
    }

    /**
     * 当发生drag的时候触发的监听器
     */
    public interface OnDragListener {
        /**
         * 开始drag
         *
         * @param position
         */
        void onDragViewStart(int position);

        /**
         * drag的正在移动
         *
         * @param position
         */
        void onDragViewMoving(int position);

        /**
         * drag的放下了
         *
         * @param position
         */
        void onDragViewDown(int position);
    }
}
