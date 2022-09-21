import 'question.dart';

class QuizBrain{
  int _questionNumber=0;

  //TODO:Question Store in this Section
  List<Question> _questionBank=[
    Question(q: 'int x[] = new int[]{10,20,30};<br><br>Arrays can also be created and initialize as in above statement.',a: true),
    Question(q: 'In an instance method or a constructor, "this" is a reference to the current object',a:true),
    Question(q:'Garbage Collection is manual process.' ,a: false),
    Question(q:'The JRE deletes objects when it determines that they are no longer being used. This process is called Garbage Collection.' ,a: true),
    Question(q: 'Constructor overloading is not possible in Java.' ,a: false ),
    Question(q:'Assignment operator is evaluated Left to Right.' ,a: false),
    Question(q: 'All binary operators except for the assignment operators are evaluated from Left to Right',a: true),
    Question(q:'Java programming is not statically-typed, means all variables should not first be declared before they can be used.' ,a:false ),
  ];
  void nextQuestion(){
    if(_questionNumber < _questionBank.length-1){
      _questionNumber++;

    }
  }


  String getQuestionText(){
    return _questionBank[_questionNumber].questionText;
  }
  bool getCorrectAnswer(){
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      //TODO: Step 3 Part B - Use a print statement to check that isFinished is returning true when you are indeed at the end of the quiz and when a restart should happen.

      print('Now returning true');
      return true;

    } else {
      return false;
    }
  }

  //TODO: Step 4 part B - Create a reset() method here that sets the questionNumber back to 0.
  void reset() {
    _questionNumber = 0;
  }
}



