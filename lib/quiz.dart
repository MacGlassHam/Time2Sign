import 'package:flutter/material.dart';
import 'main.dart';

//variables to track score and current question
var finalScore = 0;
var questionNumber = 0;
//These variable connect each quiz to a set of questions, possible answers and correct answers
var quiz1 = new Questions1();
var quiz2 = new Questions2();
var quiz3 = new Questions3();
var quiz4 = new Questions4();
var quiz5 = new Questions5();
var quiz6 = new Questions6();

//These classes hold the question data(correct answers, options and length of quiz)
class Questions1 {
  var images = [
    "assets/Images/Animals/Dog.gif",
    "assets/Images/Calendar/Monday.gif",
    "assets/Images/Colours/Orange.gif",
    "assets/Images/Education/Study.gif",
    "assets/Images/Greetings/HowAreYou.gif",
  ];


  var questions = [
    "1.",
    "2.",
    "3.",
    "4.",
    "5.",
  ];


  var choices = [
    ["Chicken", "Hello", "Dog", "April"],
    ["Goodbye", "Brown", "Monday", "Hello"],
    ["Exam", "School", "Fish", "Orange"],
    ["Cow", "Tuesday", "February", "Study"],
    ["Hello", "How are you?", "May", "Horse"],
  ];


  var correctAnswers = [
    "Dog", "Monday", "Orange", "Study", "How are you?",
  ];
}
class Questions2 {
  var images = [
    "assets/Images/Animals/Cow.gif",
    "assets/Images/Calendar/April.gif",
    "assets/Images/Colours/Blue.gif",
    "assets/Images/Hobbies/Golf.gif",
    "assets/Images/Greetings/GoodEvening.gif",
  ];

  var questions = [
    "1.",
    "2.",
    "3.",
    "4.",
    "5.",
  ];

  var choices = [
    ["Cow", "School", "Ball", "Hello"],
    ["Toothbrush", "Shoe", "April", "Apple"],
    ["Blue", "Golf", "Carrot", "Orange"],
    ["Snake", "Golf", "March", "Goodbye"],
    ["Hiking", "Good Evening", "December", "November"],
  ];


  var correctAnswers = [
    "Cow", "April", "Blue", "Golf", "Good Evening",
  ];
}
class Questions3 {
  var images = [
    "assets/Images/Calendar/September.gif",
    "assets/Images/Calendar/Thursday.gif",
    "assets/Images/Colours/Yellow.gif",
    "assets/Images/Greetings/GoodMorning.gif",
    "assets/Images/Hobbies/Reading.gif",
  ];
  var questions = [
    "1.",
    "2.",
    "3.",
    "4.",
    "5.",
  ];
  var choices = [
    ["September", "Tennis", "Father", "Saturday"],
    ["Tuesday", "Good Morning", "Golf", "Thursday"],
    ["Art", "Yellow", "Knitting", "Sunday"],
    ["Pig", "Friday", "June", "Good Morning"],
    ["August", "Cat", "Reading", "Red"],
  ];


  var correctAnswers = [
    "September", "Thursday", "Yellow", "Good Morning", "Reading",
  ];
}
class Questions4 {
  var images = [
    "assets/Images/Greetings/GoodAfternoon.gif",
    "assets/Images/Education/University.gif",
    "assets/Images/Hobbies/Running.gif",
    "assets/Images/Colours/White.gif",
    "assets/Images/Calendar/October.gif",
  ];
  var questions = [
    "1.",
    "2.",
    "3.",
    "4.",
    "5.",
  ];
  var choices = [
    ["Thursday", "Golf", "Good Afternoon", "Good Evening"],
    ["Purple", "University", "Wednesday", "School"],
    ["Tuesday", "May", "Horse", "Running"],
    ["Dog", "July", "Orange", "White"],
    ["October", "Hello", "Snake", "January"],
  ];


  var correctAnswers = [
    "Good Afternoon", "University", "Running", "White", "October",
  ];
}
class Questions5 {
  var images = [
    "assets/Images/Animals/Fish.gif",
    "assets/Images/Animals/Horse.gif",
    "assets/Images/Calendar/May.gif",
    "assets/Images/Colours/Blue.gif",
    "assets/Images/Education/Learning.gif",
  ];
  var questions = [
    "1.",
    "2.",
    "3.",
    "4.",
    "5.",
  ];
  var choices = [
    ["Fish", "Brown", "Snake", "Yellow"],
    ["Study", "Horse", "Tuesday", "Goodbye"],
    ["Monday", "March", "Essay", "May"],
    ["Hello", "Blue", "Cooking", "Art"],
    ["Learning", "Knitting", "Tennis", "Cat"],
  ];


  var correctAnswers = [
    "Fish", "Horse", "May", "Blue", "Learning",
  ];
}
class Questions6 {
  var images = [
    "assets/Images/Hobbies/Cooking.gif",
    "assets/Images/Greetings/GoodNight.gif",
    "assets/Images/Colours/Purple.gif",
    "assets/Images/Calendar/August.gif",
    "assets/Images/Animals/Snake.gif",
  ];
  var questions = [
    "1.",
    "2.",
    "3.",
    "4.",
    "5.",
  ];
  var choices = [
    ["Cow", "Running", "Cooking", "Exam"],
    ["Good Night", "Good morning", "How are you?", "Hello"],
    ["Golf", "Pig", "Purple", "Pink"],
    ["August", "April", "November", "Brown"],
    ["Snake", "School", "Tennis", "Fish"],
  ];

  var correctAnswers = [
    "Cooking", "Good Night", "Purple", "August", "Snake",
  ];
}

//quiz1
class Quiz1 extends StatefulWidget {
  const Quiz1({required key}) : super(key: key);

  @override
  State<Quiz1> createState() => _Quiz1State();
}

class _Quiz1State extends State<Quiz1> {
  static var title = "Quiz 1";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade100,
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Container(
        color: Colors.greenAccent,
        margin: EdgeInsets.all(15.0),
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(30.0)),

            Container(
              alignment: Alignment.centerRight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Question ${questionNumber + 1} of ${quiz1.questions
                      .length}",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  Text("Score: $finalScore",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),

            Padding(padding: EdgeInsets.all(10.0)),

            //Select the image to show
            Image.asset("${quiz1.images[questionNumber]}"),

            Padding(padding: EdgeInsets.all(10.0)),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                //Button 1
                MaterialButton(
                  minWidth: 100,
                  color: Colors.pink,
                  onPressed: () {
                    if (quiz1.choices[questionNumber][0] ==
                        quiz1.correctAnswers[questionNumber]) {
                      debugPrint("Correct");
                      finalScore++;
                    } else {
                      debugPrint("Wrong");
                    }
                    updateQuestion();
                  },
                  child: new Text(quiz1.choices[questionNumber][0],
                    style: new TextStyle(
                        fontSize: MediaQuery.of(context).size.width / 30,
                    ),),
                ),

                //Button 2
                MaterialButton(
                  minWidth: 100,
                  color: Colors.pink,
                  onPressed: () {
                    if (quiz1.choices[questionNumber][1] ==
                        quiz1.correctAnswers[questionNumber]) {
                      debugPrint("Correct");
                      finalScore++;
                    } else {
                      debugPrint("Wrong");
                    }
                    updateQuestion();
                  },
                  child: new Text(quiz1.choices[questionNumber][1],
                    style: new TextStyle(
                        fontSize: MediaQuery.of(context).size.width / 30,
                    ),),
                ),
              ],
            ),

              Padding(padding: EdgeInsets.all(10.0)),

              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                  children: [
                    //Button 3
                    MaterialButton(
                      minWidth: 100,
                      color: Colors.pink,
                      onPressed: () {
                        if (quiz1.choices[questionNumber][2] ==
                            quiz1.correctAnswers[questionNumber]) {
                          debugPrint("Correct");
                          finalScore++;
                        } else {
                          debugPrint("Wrong");
                        }
                        updateQuestion();
                      },
                      child: new Text(quiz1.choices[questionNumber][2],
                        style: new TextStyle(
                            fontSize: MediaQuery.of(context).size.width / 30,
                        ),),
                    ),

                    //Button 4
                    MaterialButton(
                      minWidth: 100,
                      color: Colors.pink,
                      onPressed: () {
                        if (quiz1.choices[questionNumber][3] ==
                            quiz1.correctAnswers[questionNumber]) {
                          debugPrint("Correct");
                          finalScore++;
                        } else {
                          debugPrint("Wrong");
                        }
                        updateQuestion();
                      },
                      child: new Text(quiz1.choices[questionNumber][3],
                        style: new TextStyle(
                            fontSize: MediaQuery.of(context).size.width / 30,
                        ),),
                    ),
                  ],
              ),

              //End Game button
              Container(
                  alignment: Alignment.bottomCenter,
                  child: new MaterialButton(
                      minWidth: 240.0,
                      height: 30.0,
                      color: Colors.amber,
                      onPressed: resetQuiz,
                      child: Text("Quit",
                        style: TextStyle(
                            fontSize: 18.0,

                        ),)
                  )
              ),
              ],
            ),


        ),
      );
  }

  void resetQuiz() {
    setState(() {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return const QuizPage(key: null);
      }));
      finalScore = 0;
      questionNumber = 0;
    });
  }

  void updateQuestion() {
    setState(() {
      if (questionNumber == quiz1.questions.length - 1) {
        Navigator.push(context, new MaterialPageRoute(
            builder: (context) => new Summary(score: finalScore,)));
      } else {
        questionNumber++;
      }
    });
  }

}

//quiz2
class Quiz2 extends StatefulWidget {
  const Quiz2({required key}) : super(key: key);

  @override
  State<Quiz2> createState() => _Quiz2State();
}

class _Quiz2State extends State<Quiz2> {
  static var title = "Quiz 2";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade100,
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Container(
        color: Colors.greenAccent,
        margin: EdgeInsets.all(15.0),
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(30.0)),

            Container(
              alignment: Alignment.centerRight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Question ${questionNumber + 1} of ${quiz2.questions
                      .length}",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  Text("Score: $finalScore",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),

            Padding(padding: EdgeInsets.all(10.0)),

            //Select the image to show
            Image.asset("${quiz2.images[questionNumber]}"),

            Padding(padding: EdgeInsets.all(10.0)),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                //Button 1
                MaterialButton(
                  minWidth: 100,
                  color: Colors.pink,
                  onPressed: () {
                    if (quiz2.choices[questionNumber][0] ==
                        quiz2.correctAnswers[questionNumber]) {
                      debugPrint("Correct");
                      finalScore++;
                    } else {
                      debugPrint("Wrong");
                    }
                    updateQuestion();
                  },
                  child: new Text(quiz2.choices[questionNumber][0],
                    style: new TextStyle(
                      fontSize: MediaQuery.of(context).size.width / 30,
                    ),),
                ),

                //Button 2
                MaterialButton(
                  minWidth: 100,
                  color: Colors.pink,
                  onPressed: () {
                    if (quiz2.choices[questionNumber][1] ==
                        quiz2.correctAnswers[questionNumber]) {
                      debugPrint("Correct");
                      finalScore++;
                    } else {
                      debugPrint("Wrong");
                    }
                    updateQuestion();
                  },
                  child: new Text(quiz2.choices[questionNumber][1],
                    style: new TextStyle(
                      fontSize: MediaQuery.of(context).size.width / 30,
                    ),),
                ),
              ],
            ),

            Padding(padding: EdgeInsets.all(10.0)),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                //Button 3
                MaterialButton(
                  minWidth: 100,
                  color: Colors.pink,
                  onPressed: () {
                    if (quiz2.choices[questionNumber][2] ==
                        quiz2.correctAnswers[questionNumber]) {
                      debugPrint("Correct");
                      finalScore++;
                    } else {
                      debugPrint("Wrong");
                    }
                    updateQuestion();
                  },
                  child: new Text(quiz2.choices[questionNumber][2],
                    style: new TextStyle(
                      fontSize: MediaQuery.of(context).size.width / 30,
                    ),),
                ),

                //Button 4
                MaterialButton(
                  minWidth: 100,
                  color: Colors.pink,
                  onPressed: () {
                    if (quiz2.choices[questionNumber][3] ==
                        quiz2.correctAnswers[questionNumber]) {
                      debugPrint("Correct");
                      finalScore++;
                    } else {
                      debugPrint("Wrong");
                    }
                    updateQuestion();
                  },
                  child: new Text(quiz2.choices[questionNumber][3],
                    style: new TextStyle(
                      fontSize: MediaQuery.of(context).size.width / 30,
                    ),),
                ),
              ],
            ),

            //End Game button
            Container(
                alignment: Alignment.bottomCenter,
                child: new MaterialButton(
                    minWidth: 240.0,
                    height: 30.0,
                    color: Colors.amber,
                    onPressed: resetQuiz,
                    child: Text("Quit",
                      style: TextStyle(
                        fontSize: 18.0,

                      ),)
                )
            ),
          ],
        ),


      ),
    );
  }

  void resetQuiz() {
    setState(() {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return const QuizPage(key: null);
      }));
      finalScore = 0;
      questionNumber = 0;
    });
  }

  void updateQuestion() {
    setState(() {
      if (questionNumber == quiz2.questions.length - 1) {
        Navigator.push(context, new MaterialPageRoute(
            builder: (context) => new Summary(score: finalScore,)));
      } else {
        questionNumber++;
      }
    });
  }

}

//quiz3
class Quiz3 extends StatefulWidget {
  const Quiz3({required key}) : super(key: key);

  @override
  State<Quiz3> createState() => _Quiz3State();
}

class _Quiz3State extends State<Quiz3> {
  static var title = "Quiz 3";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade100,
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Container(
        color: Colors.greenAccent,
        margin: EdgeInsets.all(15.0),
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(30.0)),

            Container(
              alignment: Alignment.centerRight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Question ${questionNumber + 1} of ${quiz3.questions
                      .length}",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  Text("Score: $finalScore",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),

            Padding(padding: EdgeInsets.all(10.0)),

            //Select the image to show
            Image.asset("${quiz3.images[questionNumber]}"),

            Padding(padding: EdgeInsets.all(10.0)),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                //Button 1
                MaterialButton(
                  minWidth: 100,
                  color: Colors.pink,
                  onPressed: () {
                    if (quiz3.choices[questionNumber][0] ==
                        quiz3.correctAnswers[questionNumber]) {
                      debugPrint("Correct");
                      finalScore++;
                    } else {
                      debugPrint("Wrong");
                    }
                    updateQuestion();
                  },
                  child: new Text(quiz3.choices[questionNumber][0],
                    style: new TextStyle(
                      fontSize: MediaQuery.of(context).size.width / 30,
                    ),),
                ),

                //Button 2
                MaterialButton(
                  minWidth: 100,
                  color: Colors.pink,
                  onPressed: () {
                    if (quiz3.choices[questionNumber][1] ==
                        quiz3.correctAnswers[questionNumber]) {
                      debugPrint("Correct");
                      finalScore++;
                    } else {
                      debugPrint("Wrong");
                    }
                    updateQuestion();
                  },
                  child: new Text(quiz3.choices[questionNumber][1],
                    style: new TextStyle(
                      fontSize: MediaQuery.of(context).size.width / 30,
                    ),),
                ),
              ],
            ),

            Padding(padding: EdgeInsets.all(10.0)),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                //Button 3
                MaterialButton(
                  minWidth: 100,
                  color: Colors.pink,
                  onPressed: () {
                    if (quiz3.choices[questionNumber][2] ==
                        quiz3.correctAnswers[questionNumber]) {
                      debugPrint("Correct");
                      finalScore++;
                    } else {
                      debugPrint("Wrong");
                    }
                    updateQuestion();
                  },
                  child: new Text(quiz3.choices[questionNumber][2],
                    style: new TextStyle(
                      fontSize: MediaQuery.of(context).size.width / 30,
                    ),),
                ),

                //Button 4
                MaterialButton(
                  minWidth: 100,
                  color: Colors.pink,
                  onPressed: () {
                    if (quiz3.choices[questionNumber][3] ==
                        quiz3.correctAnswers[questionNumber]) {
                      debugPrint("Correct");
                      finalScore++;
                    } else {
                      debugPrint("Wrong");
                    }
                    updateQuestion();
                  },
                  child: new Text(quiz3.choices[questionNumber][3],
                    style: new TextStyle(
                      fontSize: MediaQuery.of(context).size.width / 30,
                    ),),
                ),
              ],
            ),

            //End Game button
            Container(
                alignment: Alignment.bottomCenter,
                child: new MaterialButton(
                    minWidth: 240.0,
                    height: 30.0,
                    color: Colors.amber,
                    onPressed: resetQuiz,
                    child: Text("Quit",
                      style: TextStyle(
                        fontSize: 18.0,

                      ),)
                )
            ),
          ],
        ),


      ),
    );
  }

  void resetQuiz() {
    setState(() {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return const QuizPage(key: null);
      }));
      finalScore = 0;
      questionNumber = 0;
    });
  }

  void updateQuestion() {
    setState(() {
      if (questionNumber == quiz3.questions.length - 1) {
        Navigator.push(context, new MaterialPageRoute(
            builder: (context) => new Summary(score: finalScore,)));
      } else {
        questionNumber++;
      }
    });
  }

}

//quiz4
class Quiz4 extends StatefulWidget {
  const Quiz4({required key}) : super(key: key);

  @override
  State<Quiz4> createState() => _Quiz4State();
}

class _Quiz4State extends State<Quiz4> {
  static var title = "Quiz 4";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade100,
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Container(
        color: Colors.greenAccent,
        margin: EdgeInsets.all(15.0),
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(30.0)),

            Container(
              alignment: Alignment.centerRight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Question ${questionNumber + 1} of ${quiz4.questions
                      .length}",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  Text("Score: $finalScore",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),

            Padding(padding: EdgeInsets.all(10.0)),

            //Select the image to show
            Image.asset("${quiz4.images[questionNumber]}"),

            Padding(padding: EdgeInsets.all(10.0)),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                //Button 1
                MaterialButton(
                  minWidth: 100,
                  color: Colors.pink,
                  onPressed: () {
                    if (quiz4.choices[questionNumber][0] ==
                        quiz4.correctAnswers[questionNumber]) {
                      debugPrint("Correct");
                      finalScore++;
                    } else {
                      debugPrint("Wrong");
                    }
                    updateQuestion();
                  },
                  child: new Text(quiz4.choices[questionNumber][0],
                    style: new TextStyle(
                      fontSize: MediaQuery.of(context).size.width / 30,
                    ),),
                ),

                //Button 2
                MaterialButton(
                  minWidth: 100,
                  color: Colors.pink,
                  onPressed: () {
                    if (quiz4.choices[questionNumber][1] ==
                        quiz4.correctAnswers[questionNumber]) {
                      debugPrint("Correct");
                      finalScore++;
                    } else {
                      debugPrint("Wrong");
                    }
                    updateQuestion();
                  },
                  child: new Text(quiz4.choices[questionNumber][1],
                    style: new TextStyle(
                      fontSize: MediaQuery.of(context).size.width / 30,
                    ),),
                ),
              ],
            ),

            Padding(padding: EdgeInsets.all(10.0)),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                //Button 3
                MaterialButton(
                  minWidth: 100,
                  color: Colors.pink,
                  onPressed: () {
                    if (quiz4.choices[questionNumber][2] ==
                        quiz4.correctAnswers[questionNumber]) {
                      debugPrint("Correct");
                      finalScore++;
                    } else {
                      debugPrint("Wrong");
                    }
                    updateQuestion();
                  },
                  child: new Text(quiz4.choices[questionNumber][2],
                    style: new TextStyle(
                      fontSize: MediaQuery.of(context).size.width / 30,
                    ),),
                ),

                //Button 4
                MaterialButton(
                  minWidth: 100,
                  color: Colors.pink,
                  onPressed: () {
                    if (quiz4.choices[questionNumber][3] ==
                        quiz4.correctAnswers[questionNumber]) {
                      debugPrint("Correct");
                      finalScore++;
                    } else {
                      debugPrint("Wrong");
                    }
                    updateQuestion();
                  },
                  child: new Text(quiz4.choices[questionNumber][3],
                    style: new TextStyle(
                      fontSize: MediaQuery.of(context).size.width / 30,
                    ),),
                ),
              ],
            ),

            //End Game button
            Container(
                alignment: Alignment.bottomCenter,
                child: new MaterialButton(
                    minWidth: 240.0,
                    height: 30.0,
                    color: Colors.amber,
                    onPressed: resetQuiz,
                    child: Text("Quit",
                      style: TextStyle(
                        fontSize: 18.0,

                      ),)
                )
            ),
          ],
        ),


      ),
    );
  }

  void resetQuiz() {
    setState(() {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return const QuizPage(key: null);
      }));
      finalScore = 0;
      questionNumber = 0;
    });
  }

  void updateQuestion() {
    setState(() {
      if (questionNumber == quiz4.questions.length - 1) {
        Navigator.push(context, new MaterialPageRoute(
            builder: (context) => new Summary(score: finalScore,)));
      } else {
        questionNumber++;
      }
    });
  }

}

//quiz5
class Quiz5 extends StatefulWidget {
  const Quiz5({required key}) : super(key: key);

  @override
  State<Quiz5> createState() => _Quiz5State();
}

class _Quiz5State extends State<Quiz5> {
  static var title = "Quiz 5";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade100,
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Container(
        color: Colors.greenAccent,
        margin: EdgeInsets.all(15.0),
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(30.0)),

            Container(
              alignment: Alignment.centerRight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Question ${questionNumber + 1} of ${quiz5.questions
                      .length}",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  Text("Score: $finalScore",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),

            Padding(padding: EdgeInsets.all(10.0)),

            //Select the image to show
            Image.asset("${quiz5.images[questionNumber]}"),

            Padding(padding: EdgeInsets.all(10.0)),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                //Button 1
                MaterialButton(
                  minWidth: 100,
                  color: Colors.pink,
                  onPressed: () {
                    if (quiz5.choices[questionNumber][0] ==
                        quiz5.correctAnswers[questionNumber]) {
                      debugPrint("Correct");
                      finalScore++;
                    } else {
                      debugPrint("Wrong");
                    }
                    updateQuestion();
                  },
                  child: new Text(quiz5.choices[questionNumber][0],
                    style: new TextStyle(
                      fontSize: MediaQuery.of(context).size.width / 30,
                    ),),
                ),

                //Button 2
                MaterialButton(
                  minWidth: 100,
                  color: Colors.pink,
                  onPressed: () {
                    if (quiz5.choices[questionNumber][1] ==
                        quiz5.correctAnswers[questionNumber]) {
                      debugPrint("Correct");
                      finalScore++;
                    } else {
                      debugPrint("Wrong");
                    }
                    updateQuestion();
                  },
                  child: new Text(quiz5.choices[questionNumber][1],
                    style: new TextStyle(
                      fontSize: MediaQuery.of(context).size.width / 30,
                    ),),
                ),
              ],
            ),

            Padding(padding: EdgeInsets.all(10.0)),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                //Button 3
                MaterialButton(
                  minWidth: 100,
                  color: Colors.pink,
                  onPressed: () {
                    if (quiz5.choices[questionNumber][2] ==
                        quiz5.correctAnswers[questionNumber]) {
                      debugPrint("Correct");
                      finalScore++;
                    } else {
                      debugPrint("Wrong");
                    }
                    updateQuestion();
                  },
                  child: new Text(quiz5.choices[questionNumber][2],
                    style: new TextStyle(
                      fontSize: MediaQuery.of(context).size.width / 30,
                    ),),
                ),

                //Button 4
                MaterialButton(
                  minWidth: 100,
                  color: Colors.pink,
                  onPressed: () {
                    if (quiz5.choices[questionNumber][3] ==
                        quiz5.correctAnswers[questionNumber]) {
                      debugPrint("Correct");
                      finalScore++;
                    } else {
                      debugPrint("Wrong");
                    }
                    updateQuestion();
                  },
                  child: new Text(quiz5.choices[questionNumber][3],
                    style: new TextStyle(
                      fontSize: MediaQuery.of(context).size.width / 30,
                    ),),
                ),
              ],
            ),

            //End Game button
            Container(
                alignment: Alignment.bottomCenter,
                child: new MaterialButton(
                    minWidth: 240.0,
                    height: 30.0,
                    color: Colors.amber,
                    onPressed: resetQuiz,
                    child: Text("Quit",
                      style: TextStyle(
                        fontSize: 18.0,

                      ),)
                )
            ),
          ],
        ),


      ),
    );
  }

  void resetQuiz() {
    setState(() {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return const QuizPage(key: null);
      }));
      finalScore = 0;
      questionNumber = 0;
    });
  }

  void updateQuestion() {
    setState(() {
      if (questionNumber == quiz5.questions.length - 1) {
        Navigator.push(context, new MaterialPageRoute(
            builder: (context) => new Summary(score: finalScore,)));
      } else {
        questionNumber++;
      }
    });
  }

}

//quiz6
class Quiz6 extends StatefulWidget {
  const Quiz6({required key}) : super(key: key);

  @override
  State<Quiz6> createState() => _Quiz6State();
}

class _Quiz6State extends State<Quiz6> {
  static var title = "Quiz 6";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade100,
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Container(
        color: Colors.greenAccent,
        margin: EdgeInsets.all(15.0),
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(30.0)),

            Container(
              alignment: Alignment.centerRight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Question ${questionNumber + 1} of ${quiz6.questions
                      .length}",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  Text("Score: $finalScore",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),

            Padding(padding: EdgeInsets.all(10.0)),

            //Select the image to show
            Image.asset("${quiz6.images[questionNumber]}"),

            Padding(padding: EdgeInsets.all(10.0)),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                //Button 1
                MaterialButton(
                  minWidth: 100,
                  color: Colors.pink,
                  onPressed: () {
                    if (quiz6.choices[questionNumber][0] ==
                        quiz6.correctAnswers[questionNumber]) {
                      debugPrint("Correct");
                      finalScore++;
                    } else {
                      debugPrint("Wrong");
                    }
                    updateQuestion();
                  },
                  child: new Text(quiz6.choices[questionNumber][0],
                    style: new TextStyle(
                      fontSize: MediaQuery.of(context).size.width / 30,
                    ),),
                ),

                //Button 2
                MaterialButton(
                  minWidth: 100,
                  color: Colors.pink,
                  onPressed: () {
                    if (quiz6.choices[questionNumber][1] ==
                        quiz6.correctAnswers[questionNumber]) {
                      debugPrint("Correct");
                      finalScore++;
                    } else {
                      debugPrint("Wrong");
                    }
                    updateQuestion();
                  },
                  child: new Text(quiz6.choices[questionNumber][1],
                    style: new TextStyle(
                      fontSize: MediaQuery.of(context).size.width / 30,
                    ),),
                ),
              ],
            ),

            Padding(padding: EdgeInsets.all(10.0)),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                //Button 3
                MaterialButton(
                  minWidth: 100,
                  color: Colors.pink,
                  onPressed: () {
                    if (quiz6.choices[questionNumber][2] ==
                        quiz6.correctAnswers[questionNumber]) {
                      debugPrint("Correct");
                      finalScore++;
                    } else {
                      debugPrint("Wrong");
                    }
                    updateQuestion();
                  },
                  child: new Text(quiz6.choices[questionNumber][2],
                    style: new TextStyle(
                      fontSize: MediaQuery.of(context).size.width / 30,
                    ),),
                ),

                //Button 4
                MaterialButton(
                  minWidth: 100,
                  color: Colors.pink,
                  onPressed: () {
                    if (quiz6.choices[questionNumber][3] ==
                        quiz6.correctAnswers[questionNumber]) {
                      debugPrint("Correct");
                      finalScore++;
                    } else {
                      debugPrint("Wrong");
                    }
                    updateQuestion();
                  },
                  child: new Text(quiz6.choices[questionNumber][3],
                    style: new TextStyle(
                      fontSize: MediaQuery.of(context).size.width / 30,
                    ),),
                ),
              ],
            ),

            //End Game button
            Container(
                alignment: Alignment.bottomCenter,
                child: new MaterialButton(
                    minWidth: 240.0,
                    height: 30.0,
                    color: Colors.amber,
                    onPressed: resetQuiz,
                    child: Text("Quit",
                      style: TextStyle(
                        fontSize: 18.0,

                      ),)
                )
            ),
          ],
        ),


      ),
    );
  }

  void resetQuiz() {
    setState(() {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return const QuizPage(key: null);
      }));
      finalScore = 0;
      questionNumber = 0;
    });
  }

  void updateQuestion() {
    setState(() {
      if (questionNumber == quiz6.questions.length - 1) {
        Navigator.push(context, new MaterialPageRoute(
            builder: (context) => new Summary(score: finalScore,)));
      } else {
        questionNumber++;
      }
    });
  }

}


//this page show the score for the user at the end of each quiz, then they can return to the menu selection
class Summary extends StatelessWidget {
  final int score;

  Summary({Key? key, required this.score}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: Colors.green.shade100,

        body: new Container(
          alignment: Alignment.center,
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              new Text("Final Score: $score",
                textAlign: TextAlign.center,
                style: new TextStyle(
                    fontSize: 35.0
                ),),

              new Padding(padding: EdgeInsets.all(30.0)),

              new MaterialButton(
                color: Colors.amber,
                onPressed: () {
                  questionNumber = 0;
                  finalScore = 0;
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const QuizPage(key: null);
                  }));
                },
                child: new Text("Return to Menu",
                  style: new TextStyle(
                      fontSize: MediaQuery.of(context).size.width / 30,

                  ),),)

            ],
          ),
        ),


      ),
    );
  }


}