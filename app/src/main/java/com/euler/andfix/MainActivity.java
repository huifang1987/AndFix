/*
 * 
 * Copyright (c) 2015, alipay.com
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.euler.andfix;

import android.app.Activity;
import android.os.Bundle;
import android.util.Log;
import android.widget.Toast;

import com.alipay.euler.andfix.patch.PatchManager;
import com.euler.test.A;

/**
 * sample activity
 * 
 * @author luohou
 * @author sanping.li@alipay.com
 * 
 */
public class MainActivity extends Activity {
	private static final String TAG = "euler";
	/**
	 * patch manager
	 */
	private PatchManager mPatchManager;


	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.main);
		findViewById(R.id.tv_load_patch).setOnClickListener(v->loadPatch());
		findViewById(R.id.tv_invoke_method).setOnClickListener(v->invokeMethod());
	}

	@Override
	protected void onDestroy() {
		super.onDestroy();
		android.os.Process.killProcess(android.os.Process.myPid());
	}

	private void loadPatch(){
		// initialize
		mPatchManager = new PatchManager(this);
		mPatchManager.init("1.0");
		Log.d(TAG, "inited.");

		// load patch
		mPatchManager.loadPatch();
		Log.d(TAG, "apatch loaded.");
		Toast.makeText(this, "补丁加载完成！", Toast.LENGTH_LONG);
	}

	private void invokeMethod(){
		A.a("good");
		new A().b("s1", "s2");
		new A().getI();
	}
}
