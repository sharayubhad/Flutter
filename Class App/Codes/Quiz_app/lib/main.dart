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
      home:startScreen(),
    );
  }
}

class startScreen extends StatelessWidget{
  const startScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Quiz Bee",
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.orangeAccent,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Welcome to the Quiz!",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.brown,
              ),
            ),
            const SizedBox(
              height:20,
            ),
            Image.network(
              //"https://t4.ftcdn.net/jpg/03/32/68/71/360_F_332687153_gmsohq86koOEWFYlYSI3N6xzb1zIcG88.jpg",
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0iIK7I7eQ9WIeNms_GwM-XFMcwp2SY8u7uA&s",
              height: 200,
            ),
            const SizedBox(
              height:30,
            ),
            SizedBox(
              height: 50,
              width: 200,
              child: ElevatedButton(
                style: const ButtonStyle(
                  backgroundColor:WidgetStatePropertyAll(Color.fromARGB(255, 169, 157, 171),), 
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const QuizApp()),
                  );
                },
                child: const Text(
                  "Start Quiz",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 232, 211, 237),
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
  int selectAnswerIndex=-1;

  WidgetStateProperty<Color?> checkAnswer(int answerIndex){
    if(selectAnswerIndex != -1){
      if(allQuestions[currentQuestionIndex]["correctAns"]==answerIndex){
        return const WidgetStatePropertyAll(Colors.green);
      }else if(selectAnswerIndex==answerIndex){
        return const WidgetStatePropertyAll(Colors.red);
      }else{
        return const WidgetStatePropertyAll(null);
      }
    }else{
      return const WidgetStatePropertyAll(null);
    }
  }

  bool questionPage=true;
  int currentScore=0;

  @override
  Widget build(BuildContext context){
    return isQuestionScreen();
  }

  Scaffold isQuestionScreen(){  
    if (questionPage == true){
      return Scaffold(
        appBar:AppBar(
          title:const Text(
            "Quiz Bee",
            style:TextStyle(
              fontSize: 40,
              fontWeight:FontWeight.bold ,
              color: Colors.brown,
            ),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 168, 199, 224),
        ),
        body:Column(
          children: [
            const SizedBox(
             height:30,
            ),

            ///question number
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

          //question
            SizedBox(
              height:100,
              width:380,
              child: Text(
                allQuestions[currentQuestionIndex]["question"],
                style:const TextStyle(
                  fontSize:20,
                  fontWeight: FontWeight.w400,
                  color:Color.fromARGB(255, 26 , 12, 12),
                    fontStyle: FontStyle.normal,
                ),
              ),
            ),

            //option 1
            SizedBox(
              height:50,
              width:400,
              child:ElevatedButton(
                style:ButtonStyle(
                  backgroundColor: checkAnswer(0),
                ),
                onPressed: (){
                  if(selectAnswerIndex == -1){
                    selectAnswerIndex=0;
                    setState(() {});
                  }
                }, 
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

          ///option 2
            SizedBox(
              height:50,
              width:400,
              child:ElevatedButton(
                style:ButtonStyle(
                  backgroundColor: checkAnswer(1),
                ),
                onPressed: (){
                  if(selectAnswerIndex == -1){
                    selectAnswerIndex=1;
                    setState(() {});
                  }
                }, 
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

            //option 3
            SizedBox(
              height:50,
              width:400,
              child:ElevatedButton(
                style:ButtonStyle(
                 backgroundColor: checkAnswer(2),
                ),
                onPressed: (){
                  if(selectAnswerIndex == -1){
                    selectAnswerIndex=2;
                    setState(() {});
                  }
                }, 
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

            //option 4
            SizedBox(
              height:50,
              width:400,
              child:ElevatedButton(
                style:ButtonStyle(
                  backgroundColor: checkAnswer(3),
                ),
                onPressed: (){
                  if(selectAnswerIndex == -1){
                    selectAnswerIndex=3;
                    setState(() {});
                  }
                }, 
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
            if(selectAnswerIndex!=-1){
              if(selectAnswerIndex==allQuestions[currentQuestionIndex]["correctAns"]){
                currentScore++;
              }
              if(currentQuestionIndex<allQuestions.length-1){
                currentQuestionIndex++;
              }else{
                questionPage=false;
              }
              selectAnswerIndex=-1;
              setState(() {});
            
            }
          },
          tooltip:'NextQue',
          child:const Icon(
            Icons.forward,
            color: Colors.black,
          ),
        ),
        backgroundColor:const Color.fromARGB(255, 232, 211, 237),
      ); 
}else{
  return Scaffold(
    appBar: AppBar(
      title:const Text(
        "Quiz Result",
        style: TextStyle(
          fontSize:40,
          fontWeight:FontWeight.bold,
          color: Colors.brown,
        ),
      ),
      centerTitle: true,
      backgroundColor:const Color.fromARGB(255, 168, 199, 224) ,
    ),
    body: Center(
      child:Column(
        mainAxisAlignment:MainAxisAlignment.center,
        children: [
          Image.network(
            "https://images.rawpixel.com/image_800/cHJpdmF0ZS9sci9pbWFnZXMvd2Vic2l0ZS8yMDIyLTEwL3JtNDY3YmF0Y2gzLXNjZW5lLWgtMDAyLXguanBn.jpg",
            height:300,
            ///https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQXF_j3D1CHTkjiDMJKbD22EywlcauEDWEDw&s
            ///https://media.istockphoto.com/id/1183252990/vector/first-prize-gold-trophy-icon-prize-gold-trophy-winner-first-prize-vector-illustration-and.jpg?s=612x612&w=0&k=20&c=cr3yNa3yDHeqaN_-2W8TmGvuZ2hLXufO75KOdjY-1uo=
          ),
          const SizedBox(
            height:15,
          ),
          const Text(
            "Congratulations",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.orange,
            ),
          ),
          const SizedBox(
            height:15,
          ),
          Text(
            "Score: $currentScore/${allQuestions.length}",
            style:const TextStyle(
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height:15,
          ),
          SizedBox(
            height : 50,
            width : 250,
            child : ElevatedButton(
              style : const ButtonStyle(
                backgroundColor:WidgetStatePropertyAll( Color.fromARGB(255, 169, 157, 171)),
              ),
              child: const Text(
                "Restart",
                style: TextStyle(
                  fontSize:20 ,
                ),
              ), 
              onPressed:(){
                questionPage = true;
                selectAnswerIndex = -1;
                currentQuestionIndex = 0;
                currentScore = 0;
                setState(() {});
              },
            )
          ),
        ],
      ),
    ), 
    backgroundColor:const Color.fromARGB(255, 232, 211, 237), 
  );
}//else end
}//function isQuestionScreen End
}//main _quizAppState class end
