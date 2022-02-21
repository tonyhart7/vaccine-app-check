part of 'app_utils.dart';

final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

class DataServices {
  String baseUrl = "https://d6fb-157-245-62-44.ngrok.io/";

  Future<String?> getAccessKey() async {
    final SharedPreferences prefs = await _prefs;
    return prefs.getString("access_key");
  }

  Future<void> setAccessKey(String accessKey) async {
    final SharedPreferences prefs = await _prefs;
    prefs.setString("access_key", accessKey);
  }

  Future<void> delAccessKey() async {
    final SharedPreferences prefs = await _prefs;
    prefs.remove("access_key");
  }
}
