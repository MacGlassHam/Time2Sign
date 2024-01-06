import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';






class SpellingPage extends StatefulWidget {
  const SpellingPage({required key}) : super(key: key);


  @override
  State<SpellingPage> createState() => _SpellingpageState();


}
class _SpellingpageState extends State<SpellingPage> {

  static var title = "Spelling";

  //list of the image assets.
  //don't forget to add assets to pubsec.yaml
  final List<String> images = [
    'assets/Images/Spelling/Cat.jpeg',
    'assets/Images/Spelling/Dog.jpeg',
    'assets/Images/Spelling/Pen.jpeg',
    'assets/Images/Spelling/Fox.png',
    'assets/Images/Spelling/Door.jpeg',
    'assets/Images/Spelling/Ball.png',
    'assets/Images/Spelling/Duck.jpeg',
    'assets/Images/Spelling/Chat.png',
    'assets/Images/Spelling/Chair.png',
    'assets/Images/Spelling/Phone.jpeg',
    'assets/Images/Spelling/Watch.jpeg',
    'assets/Images/Spelling/Zebra.jpeg',
    'assets/Images/Spelling/Bottle.jpeg',
    'assets/Images/Spelling/Camera.jpeg',
    'assets/Images/Spelling/Laptop.jpeg',
    'assets/Images/Spelling/Tennis.jpeg',

  ];

  //List of words to anotate the images
  final List<String> captions = [
    'Cat',
    'Dog',
    'Pen',
    'Fox',
    'Door',
    'Ball',
    'Duck',
    'Chat',
    'Chair',
    'Phone',
    'Watch',
    'Zebra',
    'Bottle',
    'Camera',
    'Laptop',
    'Tennis',

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
              Center(
                  child: Text(
                    captions[_currentWord],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width/8
                    ),
                  )
              ),
              CarouselSlider(items: makeImage(),
                  options: CarouselOptions(
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 10),
                      enlargeCenterPage: true,
                      onPageChanged: (index, other) {
                        setState(() {
                          _currentWord = index;
                        });
                      }
                  )),

              Container(
                  alignment: Alignment.bottomCenter,
                  padding: const EdgeInsets.all(40),
                  child: Text(
                    'Spell out each word, the more you practice the faster and easier it will get. Try spelling other words too',
                    textAlign: TextAlign.center,
                    style: TextStyle(

                        fontSize: MediaQuery.of(context).size.width / 18),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}