import 'dart:convert';

import 'package:flutter_crud_1/routes/app_routes.dart';
import 'package:http/http.dart' as http;

class LoginService{
  login(String email, String password) async{
    http.Response response = await http.post(
      Uri.parse(AppRoutes.LOGIN),
      body: json.encode(
        {
          "email": email,
          "password": password,
          "returnSecureToken": true,
        },
      ),
    );
  }
}
