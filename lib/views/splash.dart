import 'package:flutter/material.dart';
import 'package:flutter_crud_1/views/login_page.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 5), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            Expanded(child: _getLogo()),
            const SizedBox(
              height: 20,
              width: 20,
              child: CircularProgressIndicator(
                strokeWidth: 2,
              ),
            ),
            const Text("v 0.0.1"),
            const SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }

  _getLogo(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
            "assets/images/logo_malaria.png",
            height: 200,
            width: 200,
        ),
      ],
    );
  }
}