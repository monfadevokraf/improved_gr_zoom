package com.webcare.zoom;

import us.zoom.sdk.MeetingActivity;
import android.os.Bundle;
import android.view.WindowManager;

public class MyMeetingActivity extends MeetingActivity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);

		if (!BuildConfig.DEBUG) {
			getWindow().setFlags(WindowManager.LayoutParams.FLAG_SECURE, WindowManager.LayoutParams.FLAG_SECURE);
		}
	}
}