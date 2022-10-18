//package com.cornbreadandbeans.dojosforninjas;
//
//import org.apache.tomcat.util.json.JSONParser;
//import org.apache.tomcat.util.json.ParseException;
//import org.json.JSONArray;
//import org.json.JSONObject;
//
//import javax.swing.text.html.parser.Parser;
//import java.io.IOException;
//import java.io.InputStream;
//import java.net.URI;
//import java.net.http.HttpClient;
//import java.net.http.HttpRequest;
//import java.net.http.HttpResponse;
//import java.sql.SQLOutput;
//import java.util.Collections;
//import java.util.LinkedHashMap;
//import java.util.List;
//
//public class callApi {
//    public Object callApi() throws IOException, InterruptedException, ParseException {
//        HttpRequest request = HttpRequest.newBuilder()
//                .uri(URI.create("https://zillow56.p.rapidapi.com/search?location=houston%2C%20tx"))
//                .header("X-RapidAPI-Key", "b222e073fbmshdeff432bc197f9dp1286efjsnf4cfef6552ca")
//                .header("X-RapidAPI-Host", "zillow56.p.rapidapi.com")
//                .method("GET", HttpRequest.BodyPublishers.noBody())
//                .build();
//        HttpResponse<String> response = HttpClient.newHttpClient().send(request, HttpResponse.BodyHandlers.ofString());
////        System.out.println(response.body());
//
//        JSONObject jsonObject = new JSONObject(response.body());
//        JSONArray homes = jsonObject.getJSONArray("results");
//        for (int i = 0; i<homes.length(); i++){
//            JSONObject home = homes.getJSONObject(i);
//            System.out.println(home.get("country"));
//        }
//
//        return homes;
//    }
//}
