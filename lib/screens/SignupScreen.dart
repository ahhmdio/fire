import 'package:flut_fire/Widgets/ButtonWidget.dart';
import 'package:flut_fire/Widgets/InputWidget.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Sign Up",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
            Text("Create an account,it's free"),
            SizedBox(height: 30,),
            InputField(title:"Username" ),
            InputField(title:"Email" ),
            InputField(title:"Password" ),
            InputField(title: "Confirm Password"),
            ButtonWidget(text: "Sign Up",onPressed: (){Navigator.pop;}),
          GestureDetector(onTap: (){Navigator.pushReplacementNamed(context, '/Login');},child: RichText(
            text: TextSpan(
              text: "Already have an account,",
              children: const <TextSpan>[
                TextSpan(text: 'Login', style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ))
          ],
        ),
      ),
    );
  }
}
