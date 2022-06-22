import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_crud_1/provider/sign_up_service.dart';
import 'package:flutter_crud_1/routes/app_routes.dart';
//import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;

import '../database.dart';

class SignUpPage extends StatefulWidget{
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage>{
  DataBase dado = new DataBase();
  Future<FirebaseApp> _initializeFirebase() async{
    FirebaseApp firebaseApp = await Firebase.initializeApp();
    return firebaseApp;
  }

  static Future<User?> creatingUserUsingEmailPassword({required String email, required String password, required BuildContext context}) async{
    FirebaseAuth auth = FirebaseAuth.instance;
    User? user;
    try{
      UserCredential userCredential = await auth.createUserWithEmailAndPassword(email: email, password: password);
      user = userCredential.user;
    } on FirebaseAuthException catch (e){
        print(e.message);

    }
    return user;
  }



  TextEditingController _nameInputController = TextEditingController();
  TextEditingController _mailInputController = TextEditingController();
  TextEditingController _passwordInputController = TextEditingController();
  TextEditingController _confirmInputController = TextEditingController();

  bool showPassword = false;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    String fonte = dado.getDataBase;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(
          vertical: 100,
          horizontal: 50,
        ),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Colors.cyan.shade50,
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
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "Cadastro",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey.shade700,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10),
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      validator: (value) {
                        if (value!.length < 10) {
                          return "Digite um nome maior";
                        }
                        return null;
                      },
                      controller: _nameInputController,
                      autofocus: true,
                      style: TextStyle(color: Colors.black54),
                      decoration: InputDecoration(
                        labelText: "Nome Completo",
                        labelStyle: TextStyle(
                          color: Colors.black54,
                        ),
                        prefixIcon: Icon(
                          Icons.person,
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
                    /*Padding(
                      padding: EdgeInsets.only(
                        bottom: 10,
                      ),
                    ),*/
                    TextFormField(
                      validator: (value) {
                        if (value!.length < 6) {
                          return "A senha deve ter pelo menos 6 caracteres";
                        }
                        return null;
                      },
                      controller: _passwordInputController,
                      obscureText: (this.showPassword == true) ? false : true,
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
                    ),
                    (this.showPassword == false)
                        ? TextFormField(
                      validator: (value) {
                        if (value != _passwordInputController.text) {
                          return "As senhas devem ser iguais";
                        }
                        return null;
                      },
                      controller: _confirmInputController,
                      obscureText: true,
                      style: TextStyle(color: Colors.black54),
                      decoration: InputDecoration(
                        labelText: "Confirme a Senha",
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
                        : Container(),
                    Row(
                      children: [
                        Checkbox(
                          value: this.showPassword,
                          onChanged: (bool? newValue) {
                            setState(() {
                              this.showPassword = newValue!;
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
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Divider(
                  color: Colors.black,
                ),
              ),
              // ignore: deprecated_member_use
              SizedBox(
                width: double.infinity,
                height: 75,
                child: ElevatedButton(
                  onPressed: () async{
                    //_doSignUp();
                    //User? user = await creatingUserUsingEmailPassword(email: _mailInputController.text.trim(), password: _passwordInputController.text.trim(), context: context);
                    resgisterUser(context);
                   /* if(user != null){
                      Navigator.of(context).pushNamed(AppRoutes.LOGIN);
                    }*/

                  },
                  child: Text("Cadastrar", style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 25),),
                  //color: CustomColors().getActiveSecondaryButton(),
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
            ],
          ),
        ),
      ),
    );
  }

  void resgisterUser(var ctx) async{
    var url = "http://10.0.0.47/malaria/logincode.php";
    var data = {
      "email": _mailInputController.text,
      "pass": _passwordInputController.text,
    };

    var res = await http.post(Uri.parse(url), body:data);

    if(jsonDecode(jsonEncode(res.body)) == "account already exists"){
      //Fluttertoast.showToast(msg: "account exists, Please login", toastLength: Toast.LENGTH_SHORT);
    }else{

      if(jsonDecode(jsonEncode(res.body)) == "true"){
        //Fluttertoast.showToast(msg: "account created",toastLength: Toast.LENGTH_SHORT);
        Navigator.of(ctx).pushNamed(AppRoutes.LOGIN);
      }else{
        //Fluttertoast.showToast(msg: "error",toastLength: Toast.LENGTH_SHORT);
      }
    }
  }

  void _doSignUp() {
    if (_formKey.currentState!.validate()) {
      SignUpService().signUp(
        _mailInputController.text,
        _passwordInputController.text,
      );
    } else {
      print("invalido");
    }

    // LoginModel newUser = LoginModel(
    //   name: _nameInputController.text,
    //   mail: _mailInputController.text,
    //   password: _passwordInputController.text,
    //   keepOn: true,
    // );

    // _saveUser(newUser);
  }

  // ignore: unused_element
  /*void _saveUser(LoginModel user) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(
      PreferencesKeys.activeUser,
      json.encode(user.toJson()),
    );
    );
  }*/
}