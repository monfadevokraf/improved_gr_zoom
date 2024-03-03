package com.webcare.zoom;

import android.os.Bundle;
import android.view.WindowManager;

import us.zoom.sdk.NewMeetingActivity;

public class MyMeetingActivity extends NewMeetingActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        if (BuildConfig.DEBUG) return;

        if (ZoomPlugin.disableScreenshotAndRecording) {
            getWindow().setFlags(WindowManager.LayoutParams.FLAG_SECURE, WindowManager.LayoutParams.FLAG_SECURE);
        } else {
            getWindow().clearFlags(WindowManager.LayoutParams.FLAG_SECURE);
        }

    }
}