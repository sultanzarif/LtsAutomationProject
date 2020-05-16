//package utils;
//
//import com.mashape.unirest.http.JsonNode;
//import com.mashape.unirest.http.Unirest;
//import com.mashape.unirest.http.exceptions.UnirestException;
//import org.apache.log4j.Logger;
//import org.json.JSONObject;
//
//public class APIManager {
//
//    private static APIManager mApiManager;
//    private static JSONObject currencyData;
//
//    private static Logger LOG = Logger.getLogger(APIManager.class);
//
//    public static APIManager getInstance() {
//        if (mApiManager == null) {
//            mApiManager = new APIManager();
//        }
//        return mApiManager;
//    }
//
//    private void getCurrencyData() {
//        String searchQueryApi = "http://www.mocky.io/v2/5e1c8bd13200006d002286ee";
//
//        JsonNode body;
//        try {
//            body = Unirest.get(searchQueryApi)
//                          .asJson()
//                          .getBody();
//            System.out.println(body);
//            currencyData = body.getObject().getJSONObject("data");
//        } catch (UnirestException e) {
//            e.printStackTrace();
//        }
//    }
//
//    public String getLocaleCurrency(String locale) {
//        if (currencyData == null)
//            getCurrencyData();
//        LOG.info("The currency is: " + currencyData.getString(locale.toLowerCase()));
//        return currencyData.getString(locale.toLowerCase());
//    }
//
//}