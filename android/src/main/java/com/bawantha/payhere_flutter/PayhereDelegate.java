package com.bawantha.payhere_flutter;

import android.app.Activity;
import android.content.Intent;

import com.google.gson.Gson;

import java.util.HashMap;
import java.util.Map;

import io.flutter.plugin.common.MethodChannel.Result;
import io.flutter.plugin.common.PluginRegistry.ActivityResultListener;
import lk.payhere.androidsdk.PHConfigs;
import lk.payhere.androidsdk.PHConstants;
import lk.payhere.androidsdk.PHMainActivity;
import lk.payhere.androidsdk.PHResponse;
import lk.payhere.androidsdk.model.InitRequest;
import lk.payhere.androidsdk.model.StatusResponse;

public class PayhereDelegate implements ActivityResultListener {

    private final Activity activity;
    private Result pendingResult;
    private Map<String, Object> pendingReply;
    final Gson gson = new Gson();

    public PayhereDelegate(Activity activity) {
        this.activity = activity;
    }


    void onTimePaymentDemo(Map<String, Object> arguments, Result result) {
        this.pendingResult = result;

        String jsonString = gson.toJson(arguments);
        InitRequest req = gson.fromJson(jsonString, InitRequest.class);
        Intent intent = new Intent(activity, PHMainActivity.class);
        intent.putExtra(PHConstants.INTENT_EXTRA_DATA, req);
        PHConfigs.setBaseUrl(PHConfigs.SANDBOX_URL);
        activity.startActivityForResult(intent, 456); //unique request ID like private final static int PAYHERE_REQUEST = 11010;
    }

    void onTimePaymentReal(Map<String, Object> arguments, Result result) {
        this.pendingResult = result;
        String jsonString = gson.toJson(arguments);
        InitRequest req = gson.fromJson(jsonString, InitRequest.class);
        Intent intent = new Intent(activity, PHMainActivity.class);
        intent.putExtra(PHConstants.INTENT_EXTRA_DATA, req);
        PHConfigs.setBaseUrl(PHConfigs.LIVE_URL);
        activity.startActivityForResult(intent, 456); //unique request ID like private final static int PAYHERE_REQUEST = 11010;
    }


    @Override
    public boolean onActivityResult(int requestCode, int resultCode, Intent data) {

        if (requestCode == 456 && data != null && data.hasExtra(PHConstants.INTENT_EXTRA_RESULT)) {
            PHResponse<StatusResponse> response = (PHResponse<StatusResponse>) data.getSerializableExtra(PHConstants.INTENT_EXTRA_RESULT);
            HashMap<String, Object> map = new HashMap<>();
            String jsonString = gson.toJson(response);
            map.put("response",jsonString);
            pendingResult.success(map);
            return true;
        } else {
            return true;
        }
    }
}
