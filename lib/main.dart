import 'package:flutter/material.dart';
import 'question.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),

    );
  }
}
class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scoreKeeper= [];
  List<String> question =[
    'In an instance method or a constructor, "this" is a reference to the current object',
    'Garbage Collection is manual process.',
    'The JRE deletes objects when it determines that they are no longer being used. This process is called Garbage Collection.',
    'Constructor overloading is not possible in Java.',
    'Assignment operator is evaluated Left to Right.',
    'All binary operators except for the assignment operators are evaluated from Left to Right',
    'Java programming is not statically-typed, means all variables should not first be declared before they can be used.',


  ];




  List<bool> answers=[
    true,
    true,
    false,
    true,
    false,
    false,
    true,
    false,


  ];

  int questionNumber=0;
//TODO: Question Change
  void increseNumber(){
    questionNumber++ ;
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(question[questionNumber],
                textAlign:TextAlign.center,
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.white,
              ),
              ),
            ),
        ),
        ),
        Expanded(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: ElevatedButton
                (
                child: Text('True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
                ),
                onPressed: (){
                  bool correctAnswer=answers[questionNumber];

                  setState(() {
                    increseNumber();
                    if(correctAnswer==true){
                      scoreKeeper.add(
                        Icon(Icons.check,color: Colors.green,
                        ),
                      );
                    }else{
                      scoreKeeper.add(Icon(
                        Icons.close,
                        color: Colors.red,
                      ),

                      );
                    }

                  });


                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Colors.green
                    )
                ),
              ),
        ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: ElevatedButton(

              child: Text('False',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: (){
                bool correctAnswer=answers[questionNumber];

                setState(() {
                  if(correctAnswer==false){
                    scoreKeeper.add(
                      Icon(Icons.check,color: Colors.green,
                      ),
                    );
                  }else{
                    scoreKeeper.add(Icon(
                      Icons.close,
                      color: Colors.red,
                    ),

                    );
                  }
                  increseNumber();


                });


              },
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red)
              ),
            ),
          ),
        ),
        //TODO: Add a row here as your score keeper
        Row(
          children: scoreKeeper,

        )
      ],
    );
  }
}


