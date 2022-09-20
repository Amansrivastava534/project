import 'package:flutter/material.dart';

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
  List<Icon> scoreKeeper= [

  ];
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
              child: Text('This is where the question text will go',
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
                  setState(() {
                    scoreKeeper.add(
                      Icon(Icons.check,color: Colors.green,
                      ),
                    );
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
                setState(() {
                  scoreKeeper.add(Icon(
                    Icons.close,
                    color: Colors.red,
                  ),

                  );

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


