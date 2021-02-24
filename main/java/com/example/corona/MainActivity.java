package com.example.corona;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;


public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        Runnable r = new Runnable() {

            @Override
            public void run() {
                startActivity(new Intent(getApplicationContext(), menuActivity.class));

            }
        };


        Handler h = new Handler();
        h.postDelayed(r, 3000);
    }
}
