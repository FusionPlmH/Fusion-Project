package com.leo.salt.fragment;

import android.app.Activity;
import android.app.Fragment;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;

import com.leo.salt.tweaks.LeoAmberApplication;
import com.leo.salt.tweaks.R;

import static com.leo.salt.tweaks.resource.Resource.ActionToastSring;
import static com.leo.salt.tweaks.resource.Resource.getLeoBuild;
import static com.leo.salt.tweaks.resource.Resource.getStringIdentifier;
import static com.leo.salt.utils.ExtraInfo.getKenel;

public class ContactMeFragment extends Fragment {
    EditText mBody;
    TextView mCancel;
    EditText mName;
   TextView NameTitle;
    TextView BodyTitle;
    TextView mSubmit;
    private View mView;
    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        mView= inflater.inflate(R.layout.contact_me, container, false);
        this.mCancel = (TextView)mView. findViewById(R.id.but_cancel);
        mCancel.setText(android.R.string.cancel);
        this.mSubmit = (TextView) mView.findViewById(R.id.but_sumbit);
        mSubmit.setText(getStringIdentifier(getContext(),"mail_send"));
        this.mName = (EditText) mView.findViewById(R.id.et_name);
        this.mBody = (EditText)mView. findViewById(R.id.et_body);
        NameTitle= (TextView)mView.findViewWithTag("name_title");
        NameTitle.setText(getStringIdentifier(getContext(),"mail_name"));
        BodyTitle= (TextView)mView.findViewWithTag("body_title");
        BodyTitle.setText(getStringIdentifier(getContext(),"mail_info"));
        mail();
        return  mView;
    }
    public void mail() {


       mCancel.setOnClickListener(view -> getActivity().finish());
       mSubmit.setOnClickListener(view -> {
           Intent intent = new Intent("android.intent.action.SEND");
           intent.setType("message/rfc822");
           intent.putExtra("android.intent.extra.EMAIL", new String[]{"303834502@qq.com"});
           intent.putExtra("android.intent.extra.SUBJECT", getStringIdentifier(getContext(),"mail_title"));
           intent.putExtra("android.intent.extra.TEXT", "Name: " + mName.getText() + "\nROM: " + Name() + "\n\nMessage: " + mBody.getText());
           try {
              getActivity().startActivity(Intent.createChooser(intent, getStringIdentifier(getContext(),"mail_chooser")));
           } catch (ActivityNotFoundException e) {
               ActionToastSring(getContext(),"mail_null");
           }
       });
    }
    public String Name(){
       String INFO;
        INFO=getLeoBuild("ro.boot.em.model")+"\n"+getLeoBuild("ro.build.display.id")+"\n"+getKenel();
        return INFO;
    }
    @Nullable
    @Override
    public Context getContext() {
        return LeoAmberApplication.getContext();
    }
}
