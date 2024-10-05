import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title:const Text(
            "Column Scroll",
            style:TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body:SingleChildScrollView(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network("https://cdn.pixabay.com/photo/2024/05/26/10/15/bird-8788491_1280.jpg"), 
              Container(
                height:100,
                width:200,
                color: Colors.white,
              ), 
              Image.network("https://images.pexels.com/photos/6774112/pexels-photo-6774112.jpeg?cs=srgb&dl=pexels-ibautista-6774112.jpg&fm=jpg"), 
              Container(
                height:100,
                width:200,
                color: Colors.white,
              ), 
              Image.network("https://media.istockphoto.com/id/183412466/photo/eastern-bluebirds-male-and-female.jpg?s=612x612&w=0&k=20&c=6_EQHnGedwdjM9QTUF2c1ce7cC3XtlxvMPpU5HAouhc="),
                Container(
                height:100,
                width:200,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
