import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner:false ,
      title:"Indian Flag",
      home:MyScreen(),
    );
  }
}

class MyScreen extends StatelessWidget{
  const MyScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title:const Text("Indian Flag"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child:Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width:8,
              height: 500,
              color: Colors.black,
            ),

          Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height:8,
            ),
            Container(
              height: 45,
              width:300,
              color:Colors.orange,
            ),
            Container(
              height: 45,
              width:300,
              color:Colors.white,
              child:Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSmyugysxdAWf3W_kNbqnc6YLWQkQpJOYy6g&s")
            ),
            Container(
              height: 45,
              width:300,
              color:Colors.green,
            ),
          ],
        ),
      ],),
    ),
    );
  }
}