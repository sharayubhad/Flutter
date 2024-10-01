import "package:flutter/material.dart";

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner:false,
      title:"Quiz App",
      home:QuizApp(),
    );
  }
}

class QuizApp extends StatefulWidget{
  const QuizApp({super.key});

  @override
  State createState() => _QuizAppState();
}

class _QuizAppState extends State{

  List<Map> allQuestions =[
    {
      "question":"Que1.Which of the following is not an Operating System?",
      "Option":["A.Mac Os","B.Windows Explorer","C.Red Hat","D.Solaris"],
      "correctAns":1,
    },
    
    {
      "question":"Que2.Which of the following is not a product of Microsoft?",
      "Option":["A.Ubuntu","B.XP","C.Vista","D.ME"],
      "correctAns":0,
    },
    {
      "question":"Que3.Which of the following is an example of Single Programming Operating System?",
      "Option":["A.MS-DOS","B.Unix","C.Windows","D.Linux"],
      "correctAns":0,
    },
    {
      "question":"Que4.Which of the following is not the function of the Operating System?",
      "Option":["A.Process Management","B.Memory Management","C.Device Management","D.Clock Management"],
      "correctAns":3,
    },
    {
      "question":"Que5.Which scheduler maintains the Degree of Multiprogramming??",
      "Option":["A.Short-Term Scheduler","B.Mid-Term Scheduler","C.Long-Term Scheduler","D.None of the above"],
      "correctAns":2,
    },
  ];

  int currentQuestionIndex=0;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title:const Text(
          "Quiz App",
          style:TextStyle(
            fontSize: 40,
            fontWeight:FontWeight.bold ,
            color: Colors.brown,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 168, 199, 224),
      ),
      body:Column(
        children: [
          const SizedBox(
            height:30,
          ),
          Row(
            children: [
              const SizedBox(
                width:550,
              ),
              Text(
                "Questions: ${currentQuestionIndex + 1 } / ${allQuestions.length}",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight:FontWeight.w600,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ],
          ),
          const SizedBox(
            height:50,
          ),
          SizedBox(
            height:100,
            width:380,
            child: Text(
              allQuestions[currentQuestionIndex]["question"],
              style:const TextStyle(
                fontSize:20,
                fontWeight: FontWeight.w400,
                color:Color.fromARGB(255, 26, 12, 12),
                fontStyle: FontStyle.normal,
              ),
            ),
          ),
          SizedBox(
            height:50,
            width:400,
            child:ElevatedButton(
              onPressed: (){}, 
              child:Text(
                allQuestions[currentQuestionIndex]["Option"][0],
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize:15,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
          ),
          const SizedBox(
            height:20,
          ),
          SizedBox(
            height:50,
            width:400,
            child:ElevatedButton(
              onPressed: (){}, 
              child:Text(
                allQuestions[currentQuestionIndex]["Option"][1],
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize:15,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
          ),
          const SizedBox(
            height:20,
          ),
          SizedBox(
            height:50,
            width:400,
            child:ElevatedButton(
              onPressed: (){}, 
              child:Text(
                allQuestions[currentQuestionIndex]["Option"][2],
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize:15,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
          ),
          const SizedBox(
            height:20,
          ),
          SizedBox(
            height:50,
            width:400,
            child:ElevatedButton(
              onPressed: (){}, 
              child:Text(
                allQuestions[currentQuestionIndex]["Option"][3],
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize:15,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          if(currentQuestionIndex<allQuestions.length-1){
            currentQuestionIndex++;
            setState(() {});
          }
        },
        tooltip:'NextQue',
        child:const Icon(
          Icons.forward,
          color: Colors.black,
        ),
      ),
      backgroundColor: Color.fromARGB(255, 232, 211, 237),
    );
  }
}