import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iphone_wifi/login.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void TextConfirm(){
    showDialog(context: context, builder: (context)=>AlertDialog(
      content: Container(
        height: 100,
        width: 100,
        child: Center(child: Text('Connected successfully !')),
      ),
    ));
  }

  void oonOpenBox(){
    showDialog(context: context, builder: (context)=> AlertDialog(
      content:Container(
        width:80,
        height: 100,
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text('Connect with this wifi? ',),
             const SizedBox(height: 10,),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed:(){
                  Navigator.push(context, MaterialPageRoute(builder:(context)=> Login()));
                }, child:Text('Yes')),
                  ElevatedButton(onPressed: (){
                    Navigator.pop(context);
                  }, child:Text('No')),
              ],
             )
          ],
        ),
      ),

    ));
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Iphone_WiFi'),
        centerTitle: true,
        backgroundColor: Colors.grey[700]
      ),
      backgroundColor: Colors.grey[600],
      body:Center(
        child: Container(
          height: 300,
          width: 280,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.black45
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.wifi,size: 30,color: Colors.white,),
              const SizedBox(height: 10,),
              Text('Wi-Fi',style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
                color: Colors.white

              ),),
              const SizedBox(height: 10,),
              Divider(height: 10,color: Colors.black26,),
              Row(
                mainAxisAlignment:MainAxisAlignment.start,
                children: [
                   Icon(Icons.check,size:20,color: Colors.white,),
                   const SizedBox(width: 50,),
                  Text('Thapa_Wi-Fi',style: TextStyle(
                    color: Colors.white
                  ),),
                  const SizedBox(width: 70,),
                  Icon(Icons.lock,color: Colors.white,size: 10,),
                    IconButton(onPressed:oonOpenBox, icon:Icon(Icons.wifi,size: 20,color: Colors.white,)),
                ],
              ),
              Divider(height: 5,),

              Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(width: 60,),
                  Text('Techmind_Wi-Fi',style: TextStyle(
                    color: Colors.white
                  ),),
                  const SizedBox(width: 75,),
                   IconButton(onPressed: oonOpenBox, icon:Icon(Icons.wifi,size: 20,color: Colors.white,))
                  ,
                  
              ],
              ),
              Divider(height: 5,),

              const SizedBox(height: 70,),
              Divider(height: 10,color: Colors.black26,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Wi-Fi Settings',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}