import 'package:flutter/material.dart';
import 'package:iphone_wifi/components/textfield.dart';

import 'components/button.dart';
 class Login extends StatefulWidget {
   const Login({super.key});
 
   @override
   State<Login> createState() => _LoginState();
 }
 
 class _LoginState extends State<Login> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
      body:
     /* ListView.builder(
        itemCount: 50,
        itemBuilder: (BuildContext context,int index){
        return ListTile(leading: Icon(Icons.attach_money,color: Colors.greenAccent,),
          title:Text('Money $index'),
          trailing: Icon(Icons.favorite,color: Colors.pinkAccent,),
        );
      })*/
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 30,),
          Center(child: Icon(Icons.music_note_rounded,size: 50,)),

            const SizedBox(height: 30,),
            Textfield(
              hintText: 'Email',
              obscureText: false,
            ),
          const SizedBox(height: 25,),
          Textfield(hintText: 'password',
          obscureText: true,),
          
          const SizedBox(
            height: 40,
          ),
          Button(
            text: 'Login',
          )
           
        ],
        
      )
     );

   }
 }