package com.salt.config.adapter;


import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;

import androidx.recyclerview.widget.RecyclerView;

import com.salt.config.R;
import com.salt.config.bean.DataBean;

import java.util.ArrayList;

public class RecyclerViewGridAdapter extends RecyclerView.Adapter<RecyclerViewGridAdapter.ViewHolder> {
    private Context context;
    private ArrayList<DataBean> datas;

    public RecyclerViewGridAdapter(Context context, ArrayList<DataBean> datas) {
        this.context = context;
        this.datas = datas;
    }

    @Override
    public RecyclerViewGridAdapter.ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        //转换一个布局为view对象
        View view = View.inflate(context, R.layout.grid_item, null);
        //创建ViewHolder对象，传入view对象
        ViewHolder viewHolder = new ViewHolder(view);
        //返回viewholder对象
        return viewHolder;
    }

    @Override
    public void onBindViewHolder(RecyclerViewGridAdapter.ViewHolder holder, int position) {
        DataBean dataBean = datas.get(position);

        holder.mIcon.setImageDrawable(dataBean.getSaltDrawable());
        holder.mDescribe.setText(dataBean.getSaltTitle());
    }

    @Override
    public int getItemCount() {
        return datas.size();
    }
    private RecyclerListener monItemClickListener;

    public void setRecyclerItemClickListener(RecyclerListener listener){
        monItemClickListener=listener;
    }
    public class ViewHolder extends RecyclerView.ViewHolder {

        private final ImageView mIcon;
        private final TextView mDescribe;

        public ViewHolder(View itemView) {
            super(itemView);
            mIcon = (ImageView)itemView.findViewById(R.id.grid_item_icon);
            mDescribe= (TextView) itemView.findViewById(R.id.grid_item_name);
            itemView.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    if (monItemClickListener!=null){
                        monItemClickListener.onItemClick(getAdapterPosition(),datas);
                    }
                }
            });
        }


    }
}
