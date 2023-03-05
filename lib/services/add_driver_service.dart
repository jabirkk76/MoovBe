import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:noviindus_test/helpers/preference_manager.dart';

class AddDriverService {
  Future<bool> addDriver(
      {required String name,
      required String licenseNo,
      final String? mobile}) async {
    try {
      PreferenceManager preferenceManager = PreferenceManager();
      final token = await preferenceManager.getToken();
      final urlId = await preferenceManager.getUrlId();
      if (token != null && urlId != null) {
        final url = 'http://flutter.noviindus.co.in/api/DriverApi/$urlId/';

        final response = await http.post(Uri.parse(url), headers: {
          "Authorization": "Bearer $token"
        }, body: {
          "name": name,
          "license_no": licenseNo,
          "mobile": mobile ?? ""
        });

        final data = json.decode(response.body);
        return data['status'];
      }
      return false;
    } catch (e) {
      return false;
    }
  }
}
