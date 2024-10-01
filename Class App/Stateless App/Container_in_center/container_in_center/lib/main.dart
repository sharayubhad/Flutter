import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title:"Container",
      home:TestApp(),
    );
  }
}

class TestApp extends StatelessWidget{
  const TestApp({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title:const Text("Center Container"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body:Center(
        child:Container(
          height: 200,
          width:200,
          decoration:const BoxDecoration(
            color: Colors.amber,
            shape: BoxShape.rectangle,
          ),
        ),
      ),
    );
  }
}

