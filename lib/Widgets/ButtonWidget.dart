import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  ButtonWidget({Key? key, required this.text,this.bgColor=Colors.blue,required this.onPressed}) : super(key: key);
  final String text;
  Color bgColor;
  void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed
      //     (){
      //   if(navState=="pop"){
      //     Navigator.pop;
      //   }
      //   else if (navState=="push")
      //     Navigator.pushReplacementNamed(context,nav);
      // }
      ,child: SizedBox(
          height: 40,
          width: 300,
          child: TextButton(
            onPressed: onPressed,
            child: Text(
              text,
              style: TextStyle(color: bgColor==Colors.white?Colors.black:Colors.white, fontWeight: FontWeight.bold),
            ),
            style: TextButton.styleFrom(
                backgroundColor: bgColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0),
                    side: BorderSide(color: Colors.black54))),
          )),
    );
  }
}
