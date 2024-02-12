import 'dart:core';

class Config {
  static const String appName = "PlyPicker";
  static const String apiURL = "192.168.0.185:3000";
  static const String loginAPI = "/users/login";
  static const String registerAPI = "/users/register";
  static const String userProfileAPI = "/users/user-profile";
}

// var response = await client.post(
//         url,
//         headers: requestHeaders,
//         body: jsonEncode(model.toJson()),
//       );