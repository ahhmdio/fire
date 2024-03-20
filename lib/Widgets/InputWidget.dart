import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  const InputField({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
        TextField(
            decoration: InputDecoration(border: OutlineInputBorder(borderRadius:BorderRadius.circular(5)))
        )
      ],
    );
  }
}
