package com.example.corona;

import android.graphics.Color;
import android.os.Bundle;
import android.util.Log;
import android.view.Gravity;
import android.widget.TableLayout;
import android.widget.TableRow;
import android.widget.TextView;

import com.android.volley.Request;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.JsonObjectRequest;
import com.android.volley.toolbox.Volley;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import androidx.appcompat.app.AppCompatActivity;

public class locationListActivity extends AppCompatActivity {
    String[] Name, Phone, Mac, Location, MAC;
    String url = "http://10.0.2.2:81/api.php?action=getPatients";
    String url2 = "http://10.0.2.2:81/api.php?action=getConnectedMAC";
    @Override
    protected void onCreate(Bundle savedInstanceState) {

        setContentView(R.layout.activity_table);
        super.onCreate(savedInstanceState);

        JsonObjectRequest jsonobjectrequest = new JsonObjectRequest(Request.Method.GET, url, null, new Response.Listener<JSONObject>() {

            @Override
            public void onResponse(JSONObject response) {
                try {

                    JSONObject jsonObject = response.getJSONObject("result");

                    JSONArray jsonArray = jsonObject.getJSONArray("patients");
                    Name = new String[jsonArray.length()];
                    Phone = new String[jsonArray.length()];
                    Mac = new String[jsonArray.length()];

                    for (int i = 0; i < jsonArray.length(); i++) {
                        JSONObject jsonObject1 = jsonArray.getJSONObject(i);
                        Name[i] = jsonObject1.getString("Name");
                        Phone[i] = jsonObject1.getString("Phone");
                        Mac[i] = jsonObject1.getString("MAC");
                    }
                } catch (JSONException e) {

                }
                JsonObjectRequest jsonobjectrequest2 = new JsonObjectRequest(Request.Method.GET, url2, null, new Response.Listener<JSONObject>() {
                    @Override
                    public void onResponse(JSONObject response) {
                        try {
                            JSONObject jsonObject = response.getJSONObject("result");

                            JSONArray jsonArray = jsonObject.getJSONArray("connectedMAC");
                            Location = new String[jsonArray.length()];
                            MAC = new String[jsonArray.length()];
                            for (int i = 0; i < jsonArray.length(); i++) {
                                JSONObject jsonObject1 = jsonArray.getJSONObject(i);
                                Location[i] = jsonObject1.getString("accessPointID");

                                MAC[i] = jsonObject1.getString("MAC");

                            }

                        } catch (JSONException e) {
                        }
                        int count[] = new int[8];
                        int count2[] = new int[8];
                        for (int i = 0; i < MAC.length; i++) {
                            for (int j = 0; j < Mac.length; j++) {
                                if (Mac[j].equals(MAC[i])) {
                                    count[Integer.parseInt(Location[i]) - 1]++;
                                }
                            }
                        }
                        int j = 1;
                        while (j < 9) {
                            for (int i = 0; i < Location.length; i++) {
                                if (Location[i].equals(String.valueOf(j))) {
                                    count2[j - 1]++;
                                }

                            }
                            j++;
                        }

                        TableLayout table = findViewById(R.id.tab2);
                        TextView ap = new TextView(getApplicationContext());
                        ap.setText("AP LOCATION ");
                        ap.setTextColor(Color.WHITE);
                        ap.setTextSize(10);
                        ap.setBackgroundResource(R.drawable.border);
                        TextView conn = new TextView(getApplicationContext());
                        conn.setText(" | NUMBER OF CONNECTED MACS ");
                        conn.setTextColor(Color.WHITE);
                        conn.setTextSize(10);
                        conn.setBackgroundResource(R.drawable.border);
                        TextView pa = new TextView(getApplicationContext());
                        pa.setText(" | NUMBER OF CONNECTED PATIENTS");
                        pa.setTextColor(Color.WHITE);
                        pa.setTextSize(10);
                        pa.setBackgroundResource(R.drawable.border);
                        TableRow rowHeader = new TableRow(getApplicationContext());
                        rowHeader.setBackgroundResource(R.drawable.border);
                        rowHeader.addView(ap);
                        rowHeader.addView(conn);
                        rowHeader.addView(pa);
                        table.addView(rowHeader);
                        String[] locations = new String[] {"HAZMIEH","ACHRAFIEH","HAREK HUREIK","GHOBEIRI","HAMRA","BYBLOS","TRIPOLI","SAIDA"};
                        for(int i=0;i<8;i++){
                            TextView txt1 = new TextView(getApplicationContext());
                            txt1.setTextSize(10);
                            txt1.setTextColor(Color.WHITE);
                            txt1.setGravity(Gravity.CENTER);
                            txt1.setText(locations[i]);
                            txt1.setBackgroundResource(R.drawable.border);
                            TextView txt2 = new TextView(getApplicationContext());
                            txt2.setTextSize(10);
                            txt2.setTextColor(Color.WHITE);
                            txt2.setGravity(Gravity.CENTER);
                            txt2.setText(String.valueOf(count2[i]));
                            txt2.setBackgroundResource(R.drawable.border);
                            TextView txt3 = new TextView(getApplicationContext());
                            txt3.setTextSize(10);
                            txt3.setTextColor(Color.WHITE);
                            txt3.setGravity(Gravity.CENTER);
                            txt3.setText(String.valueOf(count[i]));
                            txt3.setBackgroundResource(R.drawable.border);
                            TableRow newrow = new TableRow(getApplicationContext());
                            newrow.addView(txt1);
                            newrow.addView(txt2);
                            newrow.addView(txt3);
                            newrow.setBackgroundResource(R.drawable.border);
                            table.addView(newrow);

                        }


                    }
                }, new Response.ErrorListener() {
                    @Override
                    public void onErrorResponse(VolleyError error) {

                    }
                });
                Volley.newRequestQueue(getApplicationContext()).add(jsonobjectrequest2);




            }

        }, new Response.ErrorListener() {
            @Override
            public void onErrorResponse(VolleyError error) {
            }
        });
        Volley.newRequestQueue(this).add(jsonobjectrequest);


    }


}
