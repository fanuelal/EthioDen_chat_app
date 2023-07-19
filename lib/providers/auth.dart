import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

import '../helpers/requester.dart';
import '../models/user.dart';

class Auth extends ChangeNotifier {
  String accessToken = "";
  String refreshToken = "";
  User? currentUser;

  Future<bool> authenticate(
      String email, String password, BuildContext context) async {
    print(email);
    final jsonEncoded = json.encode({"email": email, "password": password});
    print(jsonEncoded);
    final url = Uri.parse("${Request.devUrl}/auth");
    try {
      final response = await http.post(
          url,
          // headers: {"Content-Type": "application/json"},
          body: jsonEncoded);

      final responseData = json.decode(response.body);
      print(responseData);
      if (response.statusCode == 200 && responseData["success"]) {
        accessToken = responseData["data"]["accessToken"];
        refreshToken = responseData["data"]["refreshToken"];
        currentUser = User.fromJson(responseData["data"]);
        final snackBar = SnackBar(
          backgroundColor: Colors.green,
          content: Text(responseData["message"]),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
        print('Login success');
        notifyListeners();
        return true;
      } else {
        final snackBar = SnackBar(
          backgroundColor: Colors.red,
          content: Text(responseData["message"]),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
        print('Login failed: ${responseData["message"]}');
        notifyListeners();
        return false;
      }
    } catch (error) {
      final snackBar = SnackBar(
        backgroundColor: Colors.red,
        content: Text('Error occurred during authentication: $error'),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      print('Error occurred during authentication: $error');
      notifyListeners();
      return false;
    }
  }
}
