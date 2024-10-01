import "package:flutter/material.dart";
void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:"Container Color App",
      theme:ThemeData(
        colorScheme:ColorScheme.fromSeed(seedColor:Colors.deepPurple),
        useMaterial3:true,
      ),
      home: const ContainerColorApp(),
    );
  }
}

class ContainerColorApp extends StatefulWidget{
  const ContainerColorApp({super.key});

  @override
  State createState() => _ContainerColorAppState();
}

class _ContainerColorAppState extends State{
  bool changeColor=true;
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home:Scaffold(
        appBar:AppBar(
          title:const Text("Toggle Color"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body:Center(
          child: Container(
            height:250,
            width:250,
            color:(changeColor)?Colors.amber:Colors.purple,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            if(changeColor){
              changeColor=false;
            }else{
              changeColor=true;
            }
            setState(() {});
          },
          child:const Text("Next"),
        ),
      ),
    );  
  }
}