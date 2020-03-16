package com.salt.config.adapter;

import android.content.Context;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;


import androidx.recyclerview.widget.RecyclerView;

import com.salt.config.R;
import com.salt.config.bean.DataBean;

import java.util.List;

public class RecyclerViewAdapter extends RecyclerView.Adapter<RecyclerViewAdapter.ListViewHolder> {

    private Context context;
    private List<DataBean> databean;

    //构造方法，一般需要接受两个参数，上下文，集合对象（包含我们的数据）
    public RecyclerViewAdapter(Context context, List<DataBean> databean) {
        this.context = context;
        this.databean = databean;
    }

    //创建ViewHolder（相当于item），并把ViewHolder返回出去。
    @Override
    public ListViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        //转换一个view布局对象，决定item的样子，参数：1.上下文  2.XML布局资源  3.为null
      //  View view = View.inflate(context, R.layout.list_main_view,  parent,null);
        View  view = LayoutInflater.from(context).inflate(R.layout.list_main_view,parent,false);
        //创建一个ViewHolder对象
        ListViewHolder listViewHolder = new ListViewHolder(view);
        //把创建出来的ViewHolder对象传出去
        return listViewHolder;
    }
    private RecyclerListener monItemClickListener;

    public void setRecyclerItemClickListener(RecyclerListener listener){
        monItemClickListener=listener;
    }
    //当ViewHolder和数据绑定时，回调
    @Override
    public void onBindViewHolder(ListViewHolder holder, int position) {
        //从集合里拿对应item的数据对象
        DataBean dataBean = databean.get(position);
        //给holder里面的控件对象设置数据
        holder.mIvicon.setImageDrawable(dataBean.getSaltDrawable());
        holder.mTitle.setText(dataBean.getSaltTitle());
        holder.mSumarry.setText(dataBean.getSaltSumarry());


    }

    //决定RecyclerView有多少条
    @Override
    public int getItemCount() {
        //数据不为null，有几条数据就显示几条数据   ???
        if (databean != null&& databean.size()>0) {
            return databean.size();
        }
        return 0;
    }

    //自动帮我们写的ViewHolder，参数：view对象
    public class ListViewHolder extends RecyclerView.ViewHolder {

        private final ImageView mIvicon;
        private final TextView mTitle;
        private final TextView mSumarry;
        public ListViewHolder(View itemView) {
            super(itemView);
            mIvicon = (ImageView)itemView.findViewById(R.id.viewimage);
            mTitle= (TextView) itemView.findViewById(R.id.viewName);
            mSumarry= (TextView) itemView.findViewById(R.id.viewsummary);
            itemView.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    if (monItemClickListener!=null){

                        monItemClickListener.onItemClick(getAdapterPosition(),databean);
                    }
                }
            });

        }


    }



}
