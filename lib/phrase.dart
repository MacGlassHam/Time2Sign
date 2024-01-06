import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';



class PhrasePage extends StatefulWidget {
  const PhrasePage({required key}) : super(key: key);


  @override
  State<PhrasePage> createState() => _PhrasepageState();


}
class _PhrasepageState extends State<PhrasePage> {

  static var title = "Phrases";

  //list of the image assets.
  //don't forget to add assets to pubspec.yaml
  final List<String> images = [
    'assets/Images/Phrases/HowsYourDay.gif',
    'assets/Images/Phrases/ILikeYou.gif',
    'assets/Images/Phrases/IWillComeBack.gif',
    'assets/Images/Phrases/LookOverThere.gif',
    'assets/Images/Phrases/WhatsYourName.gif',
    'assets/Images/Phrases/Whatyoucookingfordinner.gif',
    'assets/Images/Phrases/WhosThat.gif',
  ];

  //List of words to annotate the images
  final List<String> captions = [
    'Hows your day?',
    'I like you',
    'I will come back',
    'Look over there',
    'Whats your name?',
    'What are you cooking for dinner?',
    'Who is that?',
  ];

  //A variable to track which word is being displayed.
  var _currentWord = 0;

  List<Widget> makeImage() {
    return images.map((element) =>
        ClipRRect(
          child: Image.asset(element,
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(15.0),

        )).toList();
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
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width/10,
                    ),
                  )
              ),
              CarouselSlider(items: makeImage(),
                  options: CarouselOptions(
                      autoPlay: false,
                      autoPlayInterval: Duration(seconds: 10),
                      enlargeCenterPage: true,
                      onPageChanged: (index, other) {
                        setState(() {
                          _currentWord = index;
                        });
                      }
                  )),

            ],
          ),
        ),
      ),
    );
  }
}