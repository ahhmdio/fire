import 'package:flut_fire/Widgets/ButtonWidget.dart';
import 'package:flut_fire/Widgets/InputWidget.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Login",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
              SizedBox(height: 50,),
              Text("Login to your account"),
              InputField(title: "Email"),
              SizedBox(height: 10,),
              InputField(title: "Password"),
              SizedBox(height: 30,),
              ButtonWidget(text: "Login",onPressed: (){},),
              SizedBox(height: 30,),
              GestureDetector(onTap: (){Navigator.pushReplacementNamed(context, '/SignUp');},child: RichText(
                text: TextSpan(
                  text: "Don't have an account,",
                  children: const <TextSpan>[
                    TextSpan(text: 'Sign Up', style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              )),
              Expanded(child: Image.network("https://thumbs.dreamstime.com/b/open-lock-unlock-unlocked-icon-beautiful-design-fully-editable-commercial-print-media-web-any-type-projects-166831930.jpg"))
            ],
          ),
        ),
      ),
    );
  }
}
