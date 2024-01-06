import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'alphabet.dart';
import 'vocab.dart';
import 'spelling.dart';
import 'phrase.dart';
import 'quiz.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Time 2 Sign',
      theme: ThemeData(
        backgroundColor: Colors.pink,
        // This is the theme of your application.
        //

        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.amber,
        fontFamily: 'Rammetto',
      ),
      home: const MyHomePage(title: 'Time 2 Sign'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Column(children: <Widget>[
        Expanded(
            child: Container(
          color: Colors.green,
              child: Image.asset('assets/Images/Greetings/Hello.gif'),
        )),
        Container(
          child: Text(
            'Welcome to Time 2 Sign, A place for getting started with the basics of BSL. '
            'Use the menu below to find new signs to learn',
            textAlign: TextAlign.center,
          ),
          height: 75,
          width: MediaQuery.of(context).size.width,
          color: Colors.green.shade100,
        ),
        Expanded(
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const VocabPage(title: 'Vocabulary');
                  }));
                },
                child: Container(
                  width: 180,
                  color: Colors.amber,
                  child: Center(child: Text("Vocabulary")),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const AlphabetPage(key: null);
                  }));
                },
                child: Container(
                  width: 180,
                  color: Colors.greenAccent,
                  child: Center(child: Text("Alphabet")),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const PhrasePage(key: null);
                  }));
                },
                child: Container(
                  width: 180,
                  color: Colors.pink,
                  child: Center(child: Text("Phrases")),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const SpellingPage(
                      key: null,
                    );
                  }));
                },
                child: Container(
                  width: 180,
                  color: Colors.amber,
                  child: Center(child: Text("Finger Spelling")),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const QuizPage(key: null);
                  }));
                },
                child: Container(
                  width: 180,
                  color: Colors.greenAccent,
                  child: Center(child: Text("Quiz")),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}

class VocabPage extends StatelessWidget {
  const VocabPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Column(children: <Widget>[
        Expanded(
            child: Container(
          color: Colors.green,
              child: Image.asset('assets/Images/Titles/Vocab.gif'),
        )),
        Container(
          child: Text(
            'The vocabulary is split into the categories below \n Practice one by one ',
            textAlign: TextAlign.center,
          ),
          height: 75,
          width: MediaQuery.of(context).size.width,
          color: Colors.green.shade100,
        ),
        Expanded(
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const GreetPage(key: null);
                  }));
                },
                child: Container(
                  width: 180,
                  color: Colors.amber,
                  child: Center(child: Text("Greetings")),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const PlacePage(key: null);
                  }));
                },
                child: Container(
                  width: 180,
                  color: Colors.greenAccent,
                  child: Center(child: Text("Places")),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const ColourPage(key: null);
                  }));
                },
                child: Container(
                  width: 180,
                  color: Colors.pink,
                  child: Center(child: Text("Colours")),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const AnimalPage(key: null);
                  }));
                },
                child: Container(
                  width: 180,
                  color: Colors.amber,
                  child: Center(child: Text("Animals")),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const DaysPage(key: null);
                  }));
                },
                child: Container(
                  width: 180,
                  color: Colors.greenAccent,
                  child: Center(child: Text("Calendar")),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const NumPage(key: null);
                  }));
                },
                child: Container(
                  width: 180,
                  color: Colors.pink,
                  child: Center(child: Text("Numbers")),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const HobbyPage(key: null);
                  }));
                },
                child: Container(
                  width: 180,
                  color: Colors.amber,
                  child: Center(child: Text("Hobbies")),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const EducatePage(key: null);
                  }));
                },
                child: Container(
                  width: 180,
                  color: Colors.greenAccent,
                  child: Center(child: Text("Education")),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const FamilyPage(key: null);
                  }));
                },
                child: Container(
                  width: 180,
                  color: Colors.pink,
                  child: Center(child: Text("Family")),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}

class QuizPage extends StatefulWidget {
  const QuizPage({required key}) : super(key: key);

  @override
  State<QuizPage> createState() => _QuizpageState();
}

class _QuizpageState extends State<QuizPage> {
  static var title = "Quiz Selection";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return const MyHomePage(title: 'Time 2 Sign');
            }),
          ),
        ),
      ),
      body: Column(children: <Widget>[
        Expanded(
            child: Container(
          color: Colors.green,
              child: Image.asset('assets/Images/Titles/Quiz.gif'),
        )),
        Container(
          child: Text(
            'Choose a quiz out of the menu below \n Each question is a sign',
            textAlign: TextAlign.center,
          ),
          height: 75,
          width: MediaQuery.of(context).size.width,
          color: Colors.green.shade100,
        ),
        Expanded(
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const Quiz1(key: null);
                  }));
                },
                child: Container(
                  width: 180,
                  color: Colors.amber,
                  child: Center(child: Text("Quiz 1")),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const Quiz2(key: null);
                  }));
                },
                child: Container(
                  width: 180,
                  color: Colors.greenAccent,
                  child: Center(child: Text("Quiz 2")),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const Quiz3(key: null);
                  }));
                },
                child: Container(
                  width: 180,
                  color: Colors.pink,
                  child: Center(child: Text("Quiz 3")),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const Quiz4(key: null);
                  }));
                },
                child: Container(
                  width: 180,
                  color: Colors.amber,
                  child: Center(child: Text("Quiz 4")),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const Quiz5(key: null);
                  }));
                },
                child: Container(
                  width: 180,
                  color: Colors.greenAccent,
                  child: Center(child: Text("Quiz 5")),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const Quiz6(key: null);
                  }));
                },
                child: Container(
                  width: 180,
                  color: Colors.pink,
                  child: Center(child: Text("Quiz 6")),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
