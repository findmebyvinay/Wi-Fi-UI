import 'package:flutter/material.dart';
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
      ListView.builder(
        itemCount: 50,
        itemBuilder: (BuildContext context,int index){
        return ListTile(leading: Icon(Icons.attach_money,color: Colors.greenAccent,),
          title:Text('Money $index'),
          trailing: Icon(Icons.favorite,color: Colors.pinkAccent,),
        );
      })/*Column(
      //  mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 30,),
          Center(child: Icon(Icons.music_note_rounded,size: 50,)),

            const SizedBox(height: 30,),
            Padding(padding: EdgeInsets.symmetric(horizontal: 25),
            child: TextField(
              decoration:InputDecoration(
                hintText: 'Email Id',
                prefixIcon: Icon(Icons.mail_sharp,),
                prefixIconColor: Colors.blue
              ),
            ),)
        ],
        
      )*/ 
     );

   }
 }