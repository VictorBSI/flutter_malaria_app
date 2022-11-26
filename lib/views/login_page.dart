import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_crud_1/AlertDialogs/DontHaveAccount.dart';
import 'package:flutter_crud_1/provider/login_service.dart';
import 'package:flutter_crud_1/routes/app_routes.dart';
import 'package:flutter_crud_1/views/sign_up_page.dart';
//import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Future<FirebaseApp> _initializeFirebase() async{
    FirebaseApp firebaseApp = await Firebase.initializeApp();
    return firebaseApp;
  }

  static Future<User?> loginUsingEmailPassword({required String email, required String password, required BuildContext context}) async{
    FirebaseAuth auth = FirebaseAuth.instance;
    User? user;
    try{
      UserCredential userCredential = await auth.signInWithEmailAndPassword(email: email, password: password);
      user = userCredential.user;
    } on FirebaseAuthException catch (e){
      if(e.code == "user-not-found"){
        print("No User found for that email");
      }
    }
    return user;
  }

  TextEditingController _mailInputController = TextEditingController();
  TextEditingController _passwordInputController = TextEditingController();
  bool _obscurePassword = true;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: _initializeFirebase(),
        builder: (context, snapshot) {
          if(snapshot.connectionState == ConnectionState.done){
          return Container(
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 30),
            decoration: BoxDecoration(
              color: Colors.cyan.shade50
              /*gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.white,
                  Colors.cyan,
                ],
              ),*/
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: 15,
                      top: 25,
                    ),
                    /*child: Image.asset(
                      "assets/dumbbell.png",
                      height: 125,
                    ),*/
                  ),
                  Image.asset(
                      "assets/images/logo.png",
                      height: 75,
                      width: 75,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Entrar",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey.shade700,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          validator: (value) {
                            if (value!.length < 5) {
                              return "Esse e-mail parece curto demais";
                            } else if (!value.contains("@")) {
                              return "Esse e-mail está meio estranho, não?";
                            }
                            return null;
                          },
                          controller: _mailInputController,
                          autofocus: true,
                          style: TextStyle(color: Colors.black54),
                          decoration: InputDecoration(
                            labelText: "E-mail",
                            labelStyle: TextStyle(
                              color: Colors.black54,
                            ),
                            prefixIcon: Icon(
                              Icons.mail_outline,
                              color: Colors.black54,
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black54,
                              ),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black54,
                              ),
                            ),
                          ),
                        ),
                        TextFormField(
                          validator: (value) {
                            if (value!.length < 6) {
                              return "A senha deve ter pelo menos 6 caracteres";
                            }
                            return null;
                          },
                          obscureText: _obscurePassword,
                          controller: _passwordInputController,
                          style: TextStyle(color: Colors.black54),
                          decoration: InputDecoration(
                            labelText: "Senha",
                            labelStyle: TextStyle(
                              color: Colors.black54,
                            ),
                            prefixIcon: Icon(
                              Icons.vpn_key_sharp,
                              color: Colors.black54,
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black54,
                              ),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black54,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 10),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "Esqueceu a senha?",
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 12,
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: this._obscurePassword,
                        onChanged: (bool? newValue) {
                          setState(() {
                            this._obscurePassword = newValue!;
                          });
                        },
                        activeColor: Colors.black54,
                      ),
                      Text(
                        "Mostrar senha",
                        style: TextStyle(
                          color: Colors.black54,
                        ),
                      )
                    ],

                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 75,
                    child: ElevatedButton(
                      onPressed: () async{
                        //_doLogin();
                        /*await LoginService.login(
                          email: _mailInputController.text.trim(),
                          password: _passwordInputController.text.trim(), context: context,
                        ).then((value) => (value != null)? Navigator.of(context).pushNamed(AppRoutes.USER_HOME,):"Error");*/
                        //Navigator.of(context).pushNamed(AppRoutes.USER_HOME,);
                        /*User? user = await loginUsingEmailPassword(email: _mailInputController.text.trim(), password: _passwordInputController.text.trim(), context: context);
                        if(user != null){
                          Navigator.of(context).pushNamed(AppRoutes.USER_HOME,);
                        }*/
                        userSignIn(context);
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.bold,
                          fontSize: 25
                        ),
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.white,
                        ),
                        shape: MaterialStateProperty.all<OutlinedBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0),
                          ),

                        ),
                        shadowColor: MaterialStateProperty.all<Color>(
                            Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Divider(
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "Ainda não tem uma conta?",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 11),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    // ignore: deprecated_member_use
                    child: SizedBox(
                      width: double.infinity,
                      height: 75,
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignUpPage(),
                            ),
                          );
                        },
                        child: Text("Cadastre-se",
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.bold,
                                fontSize: 25
                            )
                        ),
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

      ),
    );
  }

  void userSignIn(var ctx) async{
    var url = "http://192.168.100.8/malaria/login_malaria.php";
    var data = {
      "email":_mailInputController.text,
      "pass":_passwordInputController.text,
    };

    var res = await http.post(Uri.parse(url),body:data);

    if(jsonDecode(jsonEncode(res.body)) == "\"dont have an account\""){
      //Fluttertoast.showToast(msg: "dont have an account,Create an account",toastLength: Toast.LENGTH_SHORT);
      //Navigator.of(ctx).pushNamed(AppRoutes.LOGIN,);
      showAlertDialog1(ctx);
      print(jsonDecode(jsonEncode(res.body)));
    } else{
      if(jsonDecode(jsonEncode(res.body)) == "false"){
        //Fluttertoast.showToast(msg: "incorrect password",toastLength: Toast.LENGTH_SHORT);
        print(jsonDecode(jsonEncode(res.body)));
        Navigator.of(ctx).pushNamed(AppRoutes.LOGIN,);
      } else{
        print(jsonDecode(jsonEncode(res.body)));
        Navigator.of(ctx).pushNamed(AppRoutes.USER_HOME,);
      }
    }

  }

/*
  void _doLogin() async {
    if (_formKey.currentState!.validate()) {
      LoginService()
          .login(_mailInputController.text, _passwordInputController.text);
      Navigator.of(context).pushNamed(AppRoutes.USER_HOME,);
    } else {
      print("invalido");
    }
  }*/

// Future<LoginModel> _getSavedUser() async {
//   SharedPreferences prefs = await SharedPreferences.getInstance();
//   String jsonUser = prefs.getString(PreferencesKeys.activeUser);
//   print(jsonUser);

//   Map<String, dynamic> mapUser = json.decode(jsonUser);
//   LoginModel user = LoginModel.fromJson(mapUser);
//   return user;
// }
}
