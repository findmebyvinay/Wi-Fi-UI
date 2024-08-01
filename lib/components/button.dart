import 'package:flutter/material.dart';
import 'package:iphone_wifi/homepage.dart';
class Button extends StatelessWidget {
   Button({super.key,required this.text});

  @override
  String  text;
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
   Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
      },
      child: Container(
        height: 40,
        width: 150,
        decoration: BoxDecoration(
          color: Colors.blue[400],
          borderRadius: BorderRadius.circular(10)
        ),
        child: Center(child: Text(text,style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white 
        ),)),
      ),
    );
  }
}