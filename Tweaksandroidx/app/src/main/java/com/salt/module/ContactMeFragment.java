package com.salt.module;



import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;
import androidx.fragment.app.Fragment;

import com.salt.config.R;

import static com.salt.frame.LeadFrame.ActionToastSring;
import static com.salt.utils.ExtraInfo.getKenel;
import static com.salt.utils.SaltProper.getApksStringInt;
import static com.salt.utils.SaltProper.getLeoBuild;


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
        mView= inflater.inflate(R.layout.fragment_contact, container, false);
        this.mCancel = (TextView)mView. findViewById(R.id.but_cancel);
        mCancel.setText(android.R.string.cancel);
        this.mSubmit = (TextView) mView.findViewById(R.id.but_sumbit);
        mSubmit.setText(getApksStringInt("mail_send"));
        this.mName = (EditText) mView.findViewById(R.id.et_name);
        this.mBody = (EditText)mView. findViewById(R.id.et_body);
        NameTitle= (TextView)mView.findViewWithTag("name_title");
        NameTitle.setText(getApksStringInt("mail_name"));
        BodyTitle= (TextView)mView.findViewWithTag("body_title");
        BodyTitle.setText(getApksStringInt("mail_info"));
        mail();
        return  mView;
    }
    public void mail() {


        mCancel.setOnClickListener(view -> getActivity().finish());
        mSubmit.setOnClickListener(view -> {
            Intent intent = new Intent("android.intent.action.SEND");
            intent.setType("message/rfc822");
            intent.putExtra("android.intent.extra.EMAIL", new String[]{"leo@leorom.cc"});
            intent.putExtra("android.intent.extra.SUBJECT", getApksStringInt("mail_title"));
            intent.putExtra("android.intent.extra.TEXT", "Name: " + mName.getText() + "\nROM: " + Name() + "\n\nMessage: " + mBody.getText());
            try {
                getActivity().startActivity(Intent.createChooser(intent, getApksStringInt("mail_chooser")));
            } catch (ActivityNotFoundException e) {
                ActionToastSring(getContext(),"mail_null");
            }
        });
    }
    public String Name(){
        String INFO;
        INFO=getLeoBuild("ro.boot.em.model")+"\n"+getLeoBuild("ro.build.display.id")+"\n"+getKenel(getContext());
        return INFO;
    }

}
