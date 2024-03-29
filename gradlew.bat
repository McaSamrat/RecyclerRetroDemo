package com.keychain.android.eve.feetonstreet.samratwork;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;

import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.keychain.android.eve.R;
import com.keychain.android.eve.baseclasses.BaseActivity;
import com.keychain.android.eve.homerelated.HomeActivity;

public class ProductServiceListActivity extends BaseActivity {

    FloatingActionButton mProSerFabBtn;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        LayoutInflater inflater=(LayoutInflater)this.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
        View contentview=inflater.inflate(R.layout.activity_product_service_list,null,false);
        mFrameLayout.addView(contentview,0);
        mActionbarTitleText.setText("Product & Service");
        initialize();
        onClickListner();
    }

    private void onClickListner() {
        mProSerFabBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent=new Intent(ProductServiceListActivity.this, AddProductServiceActivity.class);
                startActivity(intent);
            }
        });
        mActionbarTitleText.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                onBackPressed();
            }
        });

    }

    private void initialize() {
        mProSerFabBtn=findViewById(R.id.ProSerListFabButton);
    }

    @Override
    public void onBackPressed() {
        Intent intent=new Intent(ProductServiceListActivity.this, HomeActivity.class);
        intent.setFlags(intent.FLAG_ACTIVITY_CLEAR_TASK|intent.FLAG_ACTIVITY_NEW_TASK);
        startActivity(intent);
        overridePendingTransition(R.anim.trans_right_in,R.anim.trans_right_out);
    }
}
                                                                                                                                                                                                