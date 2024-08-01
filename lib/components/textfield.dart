import 'package:flutter/material.dart';
class Textfield extends StatelessWidget {
   Textfield({super.key,required this.hintText,required this.obscureText});

  String? hintText;
  bool obscureText;
  Widget build(BuildContext context) {
    return  Padding(padding: EdgeInsets.symmetric(horizontal: 25),
            child: TextFormField(
              obscureText: obscureText,
              decoration:InputDecoration(
              
                hintText:hintText,
                prefixIcon: Icon(Icons.mail_sharp,),
                prefixIconColor: Colors.blue,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black)
                )
              ),
              
            ),);
  }
}