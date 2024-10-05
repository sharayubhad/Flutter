
import 'package:flutter/material.dart';


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
        appBar:AppBar(
          title:const Text(
            "Row Demo",
            style:TextStyle(
              fontWeight:FontWeight.w500 ,
              fontSize:30 ,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body:Container(
          height:MediaQuery.of(context).size.height,
          color: Colors.red,
          child:Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                height:200,
                width:200,
                color: Colors.amber,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
