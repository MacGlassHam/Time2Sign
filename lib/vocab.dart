import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';


//This is where the vocabulary menu links to
//here are many stateful widgets that fetch and display the assets required

//Greetings
class GreetPage extends StatefulWidget {
  const GreetPage({required key}) : super(key: key);

  @override
  State<GreetPage> createState() => _GreetpageState();
}

class _GreetpageState extends State<GreetPage> {
  static var title = "Greetings";

  //list of the image assets.
  //don't forget to add assets to pubsec.yaml
  final List<String> images = [
    'assets/Images/Greetings/GoodAfternoon.gif',
    'assets/Images/Greetings/Goodbye.gif',
    'assets/Images/Greetings/GoodEvening.gif',
    'assets/Images/Greetings/GoodMorning.gif',
    'assets/Images/Greetings/GoodNight.gif',
    'assets/Images/Greetings/Hello.gif',
    'assets/Images/Greetings/HowAreYou.gif',
  ];

  //List of words to anotate the images
  final List<String> captions = [
    'Good Afternoon',
    'Goodbye',
    'Good Evening',
    'Good Morning',
    'Good Night',
    'Hello',
    'How are you?',
  ];

  //A variable to track which word is being displayed.
  var _currentWord = 0;

  List<Widget> makeImage() {
    return images
        .map((element) => ClipRRect(
              child: Image.asset(
                element,
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(15.0),
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade100,
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height/5,
              ),
              Center(
                  child: Text(
                    captions[_currentWord],
                    textAlign: TextAlign.center,
                style:
                    TextStyle(fontSize: MediaQuery.of(context).size.width / 12),
              )),
              CarouselSlider(
                  items: makeImage(),
                  options: CarouselOptions(
                      autoPlay: false,
                      enlargeCenterPage: true,
                      onPageChanged: (index, other) {
                        setState(() {
                          _currentWord = index;
                        });
                      })),
            ],
          ),
        ),
      ),
    );
  }
}

//Places
class PlacePage extends StatefulWidget {
  const PlacePage({required key}) : super(key: key);

  @override
  State<PlacePage> createState() => _PlacepageState();
}

class _PlacepageState extends State<PlacePage> {
  static var title = "Places";

  //list of the image assets.
  //don't forget to add assets to pubsec.yaml
  final List<String> images = [
    'assets/Images/Places/BusStop.gif',
    'assets/Images/Places/City.gif',
    'assets/Images/Places/Country.gif',
    'assets/Images/Places/Home.gif',
    'assets/Images/Places/Hospital.gif',
    'assets/Images/Places/Shop.gif',
    'assets/Images/Places/Town.gif',
    'assets/Images/Places/Village.gif',
  ];

  //List of words to annotate the images
  final List<String> captions = [
    'Bus Stop',
    'City',
    'Country',
    'Home',
    'Hospital',
    'Shop',
    'Town',
    'Village',
  ];

  //A variable to track which word is being displayed.
  var _currentWord = 0;

  List<Widget> makeImage() {
    return images
        .map((element) => ClipRRect(
              child: Image.asset(
                element,
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(15.0),
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade100,
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height/5,
              ),
              Center(
                  child: Text(
                    captions[_currentWord],
                    textAlign: TextAlign.center,
                style:
                    TextStyle(fontSize: MediaQuery.of(context).size.width / 10),
              )),
              CarouselSlider(
                  items: makeImage(),
                  options: CarouselOptions(
                      autoPlay: false,
                      enlargeCenterPage: true,
                      onPageChanged: (index, other) {
                        setState(() {
                          _currentWord = index;
                        });
                      })),
            ],
          ),
        ),
      ),
    );
  }
}

//Colours
class ColourPage extends StatefulWidget {
  const ColourPage({required key}) : super(key: key);

  @override
  State<ColourPage> createState() => _ColourpageState();
}

class _ColourpageState extends State<ColourPage> {
  static var title = "Colours";

  //list of the image assets.
  //don't forget to add assets to pubsec.yaml
  final List<String> images = [
    'assets/Images/Colours/Black.gif',
    'assets/Images/Colours/Blue.gif',
    'assets/Images/Colours/Brown.gif',
    'assets/Images/Colours/Green.gif',
    'assets/Images/Colours/Orange.gif',
    'assets/Images/Colours/Purple.gif',
    'assets/Images/Colours/Red.gif',
    'assets/Images/Colours/White.gif',
    'assets/Images/Colours/Yellow.gif',
  ];

  //List of words to anotate the images
  final List<String> captions = [
    'Black',
    'Blue',
    'Brown',
    'Green',
    'Orange',
    'Purple',
    'Red',
    'White',
    'Yellow',
  ];

  //A variable to track which word is being displayed.
  var _currentWord = 0;

  List<Widget> makeImage() {
    return images
        .map((element) => ClipRRect(
              child: Image.asset(
                element,
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(15.0),
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade100,
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height/5,
              ),
              Center(
                  child: Text(
                    captions[_currentWord],
                    textAlign: TextAlign.center,
                    style:
                    TextStyle(fontSize: MediaQuery.of(context).size.width / 10),
                  )),
              CarouselSlider(
                  items: makeImage(),
                  options: CarouselOptions(
                      autoPlay: false,
                      enlargeCenterPage: true,
                      onPageChanged: (index, other) {
                        setState(() {
                          _currentWord = index;
                        });
                      })),

            ],
          ),
        ),
      ),
    );
  }
}

//Animals
class AnimalPage extends StatefulWidget {
  const AnimalPage({required key}) : super(key: key);

  @override
  State<AnimalPage> createState() => _AnimalpageState();
}

class _AnimalpageState extends State<AnimalPage> {
  static var title = "Animals";

  //list of the image assets.
  //don't forget to add assets to pubsec.yaml
  final List<String> images = [
    'assets/Images/Animals/Cat.gif',
    'assets/Images/Animals/Cow.gif',
    'assets/Images/Animals/Dog.gif',
    'assets/Images/Animals/Fish.gif',
    'assets/Images/Animals/Horse.gif',
    'assets/Images/Animals/Pig.gif',
    'assets/Images/Animals/Snake.gif',
  ];

  //List of words to anotate the images
  final List<String> captions = [
    'Cat',
    'Cow',
    'Dog',
    'Fish',
    'Horse',
    'Pig',
    'Snake',
  ];

  //A variable to track which word is being displayed.
  var _currentWord = 0;

  List<Widget> makeImage() {
    return images
        .map((element) => ClipRRect(
              child: Image.asset(
                element,
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(15.0),
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade100,
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height/5,
              ),
              Center(
                  child: Text(
                    captions[_currentWord],
                    textAlign: TextAlign.center,
                    style:
                    TextStyle(fontSize: MediaQuery.of(context).size.width / 10),
                  )),
              CarouselSlider(
                  items: makeImage(),
                  options: CarouselOptions(
                      autoPlay: false,
                      enlargeCenterPage: true,
                      onPageChanged: (index, other) {
                        setState(() {
                          _currentWord = index;
                        });
                      })),

            ],
          ),
        ),
      ),
    );
  }
}

//Calendar
class DaysPage extends StatefulWidget {
  const DaysPage({required key}) : super(key: key);

  @override
  State<DaysPage> createState() => _DayspageState();
}

class _DayspageState extends State<DaysPage> {
  static var title = "Calendar";

  //list of the image assets.
  //don't forget to add assets to pubsec.yaml
  final List<String> images = [
    'assets/Images/Calendar/Monday.gif',
    'assets/Images/Calendar/Tuesday.gif',
    'assets/Images/Calendar/Wednesday.gif',
    'assets/Images/Calendar/Thursday.gif',
    'assets/Images/Calendar/Friday.gif',
    'assets/Images/Calendar/Saturday.gif',
    'assets/Images/Calendar/Sunday.gif',
    'assets/Images/Calendar/January.gif',
    'assets/Images/Calendar/February.gif',
    'assets/Images/Calendar/March.gif',
    'assets/Images/Calendar/April.gif',
    'assets/Images/Calendar/May.gif',
    'assets/Images/Calendar/June.gif',
    'assets/Images/Calendar/July.gif',
    'assets/Images/Calendar/August.gif',
    'assets/Images/Calendar/September.gif',
    'assets/Images/Calendar/October.gif',
    'assets/Images/Calendar/November.gif',
    'assets/Images/Calendar/December.gif',
  ];

  //List of words to anotate the images
  final List<String> captions = [
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
    'Sunday',
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December',
  ];

  //A variable to track which word is being displayed.
  var _currentWord = 0;

  List<Widget> makeImage() {
    return images
        .map((element) => ClipRRect(
              child: Image.asset(
                element,
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(15.0),
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade100,
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height/5,
              ),
              Center(
                  child: Text(
                    captions[_currentWord],
                    textAlign: TextAlign.center,
                    style:
                    TextStyle(fontSize: MediaQuery.of(context).size.width / 10),
                  )),
              CarouselSlider(
                  items: makeImage(),
                  options: CarouselOptions(
                      autoPlay: false,
                      enlargeCenterPage: true,
                      onPageChanged: (index, other) {
                        setState(() {
                          _currentWord = index;
                        });
                      })),

            ],
          ),
        ),
      ),
    );
  }
}

//Numbers
class NumPage extends StatefulWidget {
  const NumPage({required key}) : super(key: key);

  @override
  State<NumPage> createState() => _NumpageState();
}

class _NumpageState extends State<NumPage> {
  static var title = "Numbers";

  //list of the image assets.
  //don't forget to add assets to pubsec.yaml
  final List<String> images = [
    'assets/Images/numbers/1-10.gif',
    'assets/Images/numbers/11-20.gif',
    'assets/Images/numbers/10sExamples.gif',
    'assets/Images/numbers/100sExamples.gif',
  ];

  //List of words to anotate the images
  final List<String> captions = [
    '1-10',
    '11-20',
    'Small Examples',
    'Bigger Examples',
  ];

  //A variable to track which word is being displayed.
  var _currentWord = 0;

  List<Widget> makeImage() {
    return images
        .map((element) => ClipRRect(
              child: Image.asset(
                element,
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(15.0),
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade100,
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height/5,
              ),
              Center(
                  child: Text(
                    captions[_currentWord],
                    textAlign: TextAlign.center,
                    style:
                    TextStyle(fontSize: MediaQuery.of(context).size.width / 10),
                  )),
              CarouselSlider(
                  items: makeImage(),
                  options: CarouselOptions(
                      autoPlay: false,
                      enlargeCenterPage: true,
                      onPageChanged: (index, other) {
                        setState(() {
                          _currentWord = index;
                        });
                      })),

            ],
          ),
        ),
      ),
    );
  }
}

//Hobbies
class HobbyPage extends StatefulWidget {
  const HobbyPage({required key}) : super(key: key);

  @override
  State<HobbyPage> createState() => _HobbypageState();
}

class _HobbypageState extends State<HobbyPage> {
  static var title = "Hobbies";

  //list of the image assets.
  //don't forget to add assets to pubsec.yaml
  final List<String> images = [
    'assets/Images/Hobbies/Art.gif',
    'assets/Images/Hobbies/Bowling.gif',
    'assets/Images/Hobbies/Cooking.gif',
    'assets/Images/Hobbies/Golf.gif',
    'assets/Images/Hobbies/Hiking.gif',
    'assets/Images/Hobbies/Knitting.gif',
    'assets/Images/Hobbies/Reading.gif',
    'assets/Images/Hobbies/Running.gif',
    'assets/Images/Hobbies/Tennis.gif',
  ];

  //List of words to anotate the images
  final List<String> captions = [
    'Art',
    'Bowling',
    'Cooking',
    'Golf',
    'Hiking',
    'Knitting',
    'Reading',
    'Running',
    'Tennis',
  ];

  //A variable to track which word is being displayed.
  var _currentWord = 0;

  List<Widget> makeImage() {
    return images
        .map((element) => ClipRRect(
              child: Image.asset(
                element,
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(15.0),
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade100,
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height/5,
              ),
              Center(
                  child: Text(
                    captions[_currentWord],
                    textAlign: TextAlign.center,
                    style:
                    TextStyle(fontSize: MediaQuery.of(context).size.width / 10),
                  )),
              CarouselSlider(
                    items: makeImage(),
                    options: CarouselOptions(
                        autoPlay: false,
                        enlargeCenterPage: true,
                        onPageChanged: (index, other) {
                          setState(() {
                            _currentWord = index;
                          });
                        })),
            ],
          ),
        ),
      ),
    );
  }
}

//Education
class EducatePage extends StatefulWidget {
  const EducatePage({required key}) : super(key: key);

  @override
  State<EducatePage> createState() => _EducatepageState();
}

class _EducatepageState extends State<EducatePage> {
  static var title = "Education";

  //list of the image assets.
  //don't forget to add assets to pubsec.yaml
  final List<String> images = [
    'assets/Images/Education/Essay.gif',
    'assets/Images/Education/Exam.gif',
    'assets/Images/Education/Learning.gif',
    'assets/Images/Education/School.gif',
    'assets/Images/Education/Study.gif',
    'assets/Images/Education/University.gif',
  ];

  //List of words to anotate the images
  final List<String> captions = [
    'Essay',
    'Exam',
    'Learning',
    'School',
    'Study',
    'University',
  ];

  //A variable to track which word is being displayed.
  var _currentWord = 0;

  List<Widget> makeImage() {
    return images
        .map((element) => ClipRRect(
              child: Image.asset(
                element,
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(15.0),
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade100,
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height/5,
              ),
              Center(
                  child: Text(
                    captions[_currentWord],
                    textAlign: TextAlign.center,
                    style:
                    TextStyle(fontSize: MediaQuery.of(context).size.width / 10),
                  )),
              CarouselSlider(
                  items: makeImage(),
                  options: CarouselOptions(
                      autoPlay: false,
                      enlargeCenterPage: true,
                      onPageChanged: (index, other) {
                        setState(() {
                          _currentWord = index;
                        });
                      })),
            ],
          ),
        ),
      ),
    );
  }
}

//Family
class FamilyPage extends StatefulWidget {
  const FamilyPage({required key}) : super(key: key);

  @override
  State<FamilyPage> createState() => _FamilypageState();
}

class _FamilypageState extends State<FamilyPage> {
  static var title = "Family";

  //list of the image assets.
  //don't forget to add assets to pubsec.yaml
  final List<String> images = [
    'assets/Images/family/brother.gif',
    'assets/Images/family/Dad.gif',
    'assets/Images/family/Daughter.gif',
    'assets/Images/family/Gdad.gif',
    'assets/Images/family/Gmum.gif',
    'assets/Images/family/Mum.gif',
    'assets/Images/family/Sister.gif',
    'assets/Images/family/Son.gif',
  ];

  //List of words to anotate the images
  final List<String> captions = [
    'Brother',
    'Dad',
    'Daughter',
    'Grandad',
    'Grandma',
    'Mum',
    'Sister',
    'Son',
  ];

  //A variable to track which word is being displayed.
  var _currentWord = 0;

  List<Widget> makeImage() {
    return images
        .map((element) => ClipRRect(
      child: Image.asset(
        element,
        fit: BoxFit.cover,
      ),
      borderRadius: BorderRadius.circular(15.0),
    ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade100,
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height/5,
              ),
              Center(
                  child: Text(
                    captions[_currentWord],
                    textAlign: TextAlign.center,
                    style:
                    TextStyle(fontSize: MediaQuery.of(context).size.width / 10),
                  )),
              CarouselSlider(
                  items: makeImage(),
                  options: CarouselOptions(
                      autoPlay: false,
                      enlargeCenterPage: true,
                      onPageChanged: (index, other) {
                        setState(() {
                          _currentWord = index;
                        });
                      })),

            ],
          ),
        ),
      ),
    );
  }
}