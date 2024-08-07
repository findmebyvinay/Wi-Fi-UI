import 'package:flutter/material.dart';
class Textfield extends StatelessWidget {
   Textfield({super.key,required this.hintText,required this.obscureText,required this.prefixIcon});

  String? hintText;
  bool obscureText;
  Widget? prefixIcon;
  Widget build(BuildContext context) {
    return  Padding(padding: EdgeInsets.symmetric(horizontal: 25),
            child: TextFormField(
              validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
              obscureText: obscureText,
              decoration:InputDecoration(
              
                hintText:hintText,
                prefixIcon: prefixIcon,
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