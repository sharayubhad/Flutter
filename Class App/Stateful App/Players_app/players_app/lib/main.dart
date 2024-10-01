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
      title:"Player App",
      theme:ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:const PlayersApp(),
    );
  }
}

class PlayersApp extends StatefulWidget{
  const PlayersApp({super.key});

  @override
  State createState() => _PlayersAppState();
}

class _PlayersAppState extends State{
  int counter=0;
  List playerList=[
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmxzrq3KSkPVy2f1wTZ6BvGtCJYeGlokblBlSgtKEVgQf1Er65fWRy55iWDCMo72vmJA0&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRVeoQvsG9bz4wg1AoJCwe71p_WF16cmFamAw&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPtqeKJyU9tUmbiDJcbkZe1xhSOqIGsTctNw&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQp5IMvU5mzUNUAVtUPVexkzgt3cDPUE6113Q&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfxCTR2x0jhnhQYi7vwx_1Te6t3HpGUXmTJg&s",
   ];
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar:AppBar(
          title:const Text("Players App"),
          centerTitle: true,
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(playerList[counter],
              height: 300,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            if(counter<playerList.length-1){
              counter++;
            }else{
              counter=0;
            }
            setState(() {});
          },
          tooltip:'Increment',
          child:const Icon(Icons.add),
        ),
    );
  }
}