import 'package:flut_fire/screens/LoginScreen.dart';
import 'package:flut_fire/screens/SignupScreen.dart';
import 'package:flutter/material.dart';

import 'screens/WelcomeScreen.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,initialRoute: '/',
        routes: {
          '/': (context) => WelcomeScreen(),
          '/Login': (context) => LoginScreen(),
          '/SignUp': (context) => SignUpScreen(),
        });
  }
}
