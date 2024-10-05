import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState()=>_shoesAppState();
}

class _shoesAppState extends State<MyApp>{
  int count=0;
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home :Scaffold(
        appBar:AppBar(
        title:const Text(
          "Shoes",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {},
            color: Colors.blue,
          ),
        ],
        backgroundColor: Colors.white,
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
              Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBT8BZADg_yNtHdzQumG-C2OXEvWOTBrHkKw&s",
                fit: BoxFit.fill,
              ),
              
          const SizedBox(
            height:15,
            ///width:30,
          ),
          const Padding(
            padding: const EdgeInsets.all(8.0),
            child: const Text(
                'Nike Air Force 1"07',
                style:TextStyle(
                 fontSize: 25,
                 fontWeight: FontWeight.bold,
                 color: Colors.black,
                ),
            ),
          ),
          const SizedBox(
            height:10,
          ),
          const Padding(
            padding:const EdgeInsets.all(8.0),
            child: const Text(
              "With iconic style and legendary comfort ,the AF-1 was made to be worn on repeat.This iteration puts a fresh spin on the hoopsclasic with crisp leather,eraechoing '80s construction and reflective-design Swoosh logos.",
              style:const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w200,
              ),
            ),
          ), 
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
                ElevatedButton(
                  onPressed:(){},
                  style:const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.blue),
                  ),
                  child:const Text(
                    "SHOES",
                    style:TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w100,
                    ),
                ),
              ),
              const SizedBox(
                width:20,
              ),
             ElevatedButton(
                  onPressed:(){},
                  style:const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.blue),
                  ),
                  child:const Text(
                    "FOOTWARE",
                    style:TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                ),           
            ],
          ),
          const SizedBox(
           height:10,
          ),
          Row(
            children: [
              const Text(
                "Quality",
                style:TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w200,
                ),
              ),
              IconButton(
                 icon: const Icon(Icons.remove),
                 onPressed: (){
                  count--;
                  setState(() {    
                  });
                },
              ),
              SizedBox(
                width: 10,
              ),
      
            ],
          ),
          const SizedBox(
            height:30
          ),
          Center(
            child:ElevatedButton(
              onPressed: () {},
              style: const ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.blue),
              ),
              child:const Text(
                "PURCHASED",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w100,
                  color: Colors.white,
                ),
              ),  
            ),
          ),
        ],
      ),
    ),
  );
}
}