import 'package:flutter/material.dart';
import 'package:iphone_wifi/components/textfield.dart';
import 'package:iphone_wifi/thankpage.dart';

import 'components/button.dart';
 class Login extends StatefulWidget {
   const Login({super.key});
 
   @override
   State<Login> createState() => _LoginState();
 }
 
 class _LoginState extends State<Login> {
  final _formKey=GlobalKey<FormState>();
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
      Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 30,),
            Center(child: Icon(Icons.music_note_rounded,size: 90,)),
            Text('Welcome Back! You,ve been missed😊',
            style: TextStyle(
              fontSize: 25,
              fontWeight:FontWeight.w700,
              fontStyle:FontStyle.italic
            ),),
        
              const SizedBox(height: 30,),
              Textfield(
                hintText: 'Email',
                obscureText: false,
                prefixIcon: Icon(Icons.mail_sharp)
                
              ),
            const SizedBox(height: 25,),
            Textfield(hintText: 'password',
            prefixIcon: Icon(Icons.key_sharp),
            obscureText: true,),
            const SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
             children: [
              Text('Dont have an Account?'),
              const SizedBox(width: 5,),
              GestureDetector(
                onTap: (){},
                child: Text('Register Now !',
                style: TextStyle(
                  fontWeight:FontWeight.w600,
                  color: Colors.amber[200]
                ),),
              )
             ],
            ),
            
            const SizedBox(
              height: 40,
            ),
            //Button(text: 'Login', ),
            ElevatedButton(onPressed: (){
               if (_formKey.currentState!.validate()) {
                  // If the form is valid, display a snackbar. In the real world,
                  // you'd often call a server or save the information in a database.
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Processing Data')),
                    
                  );
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Thankpage()));
                }
            }, child:Text('Login'))
             
          ],
          
        ),
      )
     );

   }
 }