import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:noviindus_test/helpers/preference_manager.dart';

class DeleteDriverService {
  Future<bool> deleteService({required String driverId}) async {
    try {
      PreferenceManager preferenceManager = PreferenceManager();
      final token = await preferenceManager.getToken();
      final urlId = await preferenceManager.getUrlId();
      if (token != null && urlId != null) {
        final url = 'http://flutter.noviindus.co.in/api/DriverApi/$urlId/';
        final response = await http.delete(Uri.parse(url),
            headers: {"Authorization": "Bearer $token"},
            body: {"driver_id": driverId});
        final data = json.decode(response.body);
        if (data["status"] != null && data["status"] == true) {
          return true;
        }
      }
      return false;
    } catch (e) {
      return false;
    }
  }
}
