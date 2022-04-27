import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_crud_1/routes/app_routes.dart';
import 'package:http/http.dart' as http;

class LoginService{
  final FirebaseAuth _firebaseAuth;

  LoginService(this._firebaseAuth);
  Stream<User?> get authStateChanges => _firebaseAuth.idTokenChanges();

  Future<String?> login({required String email, required String password}) async{
    try{
      await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
      return "SignIn";
    } on FirebaseAuthException catch (e){
      return e.message;
    }
  }

  /*login(String email, String password) async{
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
  }*/
}
