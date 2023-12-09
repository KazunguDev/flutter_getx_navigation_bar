import 'package:dio/dio.dart';
import 'package:flutter_getx_navigation_bar/generated/models/user_model.dart';
import 'package:flutter_getx_navigation_bar/utils/constants.dart';
import 'package:flutter_getx_navigation_bar/utils/log.dart';
import 'package:flutter_getx_navigation_bar/utils/rest_connector.dart';
import 'dart:convert' as convert;

class LoginAPI {
  Future<User?> login(String username, String password) async {
    final url =
        base_url + "test.json?username=" + username + "&pass=" + password;
    log(url);
    try {
      //Response response = await Dio().get(url);
      Response response = await RestConnector(url: url).getData();

      /*Response response = await RestConnector(
          url: url,
          requestType: "POST",
          clearCookies: true,
          data: convert.jsonEncode({
            "name": username,
            "pass": password,
          })).getData();*/

      //log(response);

      final user = User.fromJson(response.data);
      return user;
    } catch (e) {
      log(e);
      return null;
    }
  }
}
