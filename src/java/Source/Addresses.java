/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Source;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;


/**
 *
 * @author Ivan
 */
public class Addresses {
   
   public static Map<String, String> hashMap = new HashMap<String, String>(){
        {   put("AL","Alabama");
            put("AK","Alaska");
            put("AZ","Arizona");
            put("AR","Arkansas");
            put("CA","California");
            put("CO","Colorado");
            put("CT","Connecticut");
            put("FL","Florida");
            put("GA","Georgia");
        }    
    };
    public static JSONArray convertAddress() {
        //Наверное должно предполагаться, что это идёт из базы данных, а не заполняется статически

   JSONArray states = new JSONArray();
   hashMap.forEach((key, value) -> {
       JSONObject stateJson = new JSONObject();
       stateJson.put("short_name", key);
       stateJson.put("name", value);
       states.put(stateJson);
   });
   
  return states;
            }
}
