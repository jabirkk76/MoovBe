import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:noviindus_test/helpers/preference_manager.dart';
import 'dart:convert';

import 'package:noviindus_test/model/driver_list_model.dart';

class DriverListService {
  Future<List<Driver>> getDriverList() async {
    try {
      PreferenceManager preferenceManager = PreferenceManager();
      final token = await preferenceManager.getToken();
      final urlId = await preferenceManager.getUrlId();
      if (token != null && urlId != null) {
        final url = 'http://flutter.noviindus.co.in/api/DriverApi/$urlId/';
        final response = await http
            .get(Uri.parse(url), headers: {"Authorization": "Bearer $token"});
        final data = json.decode(response.body);
        log(data.toString());
        if (data["status"] == true) {
          final List<Driver> driverList = (data["driver_list"] as List)
              .map((e) => Driver.fromJson(e))
              .toList();
          return driverList;
        }
      }

      return [];
    } catch (e) {
      return [];
    }
  }
}
