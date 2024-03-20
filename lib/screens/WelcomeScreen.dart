import 'package:flut_fire/Widgets/ButtonWidget.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
            Text("Welcome",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
            SizedBox(height: 30,)
            ,Text(textAlign: TextAlign.center,"An exclusive flutter tutorial provider\nHere for you",style: TextStyle(fontWeight: FontWeight.w600),),
         Expanded(child: Image.network("https://media.istockphoto.com/id/1210010868/video/young-businessman-working-with-laptop.jpg?s=640x640&k=20&c=4zyaTIpj7gRaBhZwIur0GGYyo5YvI9r5MYRK8mpbgm4=")),
            SizedBox(height: 30,),
            ButtonWidget(text: "Login",bgColor: Colors.white,onPressed: (){Navigator.popAndPushNamed(context,'/Login');print("worked");}),
            SizedBox(height: 20,),
            ButtonWidget(text: "Sign Up",bgColor: Colors.blue,onPressed: (){Navigator.popAndPushNamed(context, "/SignUp");}),
          ],),
        ),
      ),
    );
  }
}
