package com.webcare.zoom;

import us.zoom.sdk.NewMeetingActivity;
import android.os.Bundle;
import android.view.WindowManager;

public class MyMeetingActivity extends NewMeetingActivity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);

		if (!BuildConfig.DEBUG) {
			getWindow().setFlags(WindowManager.LayoutParams.FLAG_SECURE, WindowManager.LayoutParams.FLAG_SECURE);
		}
	}
}