import 'package:shared_preferences/shared_preferences.dart';

class PreferenceManager {
  //Save user id and token to shared preferences when login
  void saveData({
    required String token,
    required String userId,
  }) async {
    final preferences = await SharedPreferences.getInstance();
    await preferences.setString("token", token);
    await preferences.setString("user_id", userId);
  }

  //Getting the stored token
  Future<String?> getToken() async {
    final preferences = await SharedPreferences.getInstance();
    final tokenData = preferences.getString("token");
    return tokenData;
  }

  //Getting the stored userId
  Future<String?> getUrlId() async {
    final preferences = await SharedPreferences.getInstance();
    final urlID = preferences.getString("user_id");
    return urlID;
  }
}
