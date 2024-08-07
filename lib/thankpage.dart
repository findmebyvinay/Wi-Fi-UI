import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class Thankpage extends StatelessWidget {
  const Thankpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Thank You for Logging Inn!😘',style: TextStyle(
              fontSize: 40,
              color: Colors.black,
              
            ),),
            CircularProgressIndicator(),
            
        
          ],
        ),
      ),
    );
  }
}