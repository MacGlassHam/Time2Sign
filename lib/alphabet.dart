import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class AlphabetPage extends StatefulWidget {
  const AlphabetPage({required key}) : super(key: key);

  @override
  State<AlphabetPage> createState() => _AlphabetpageState();
}

class _AlphabetpageState extends State<AlphabetPage> {
  static var title = "Alphabet";

  //list of the image assets.
  final List<String> images = [
    'assets/Images/Alphabet/A.png',
    'assets/Images/Alphabet/B.png',
    'assets/Images/Alphabet/C.png',
    'assets/Images/Alphabet/D.png',
    'assets/Images/Alphabet/E.png',
    'assets/Images/Alphabet/F.png',
    'assets/Images/Alphabet/G.png',
    'assets/Images/Alphabet/H.png',
    'assets/Images/Alphabet/I.png',
    'assets/Images/Alphabet/J.png',
    'assets/Images/Alphabet/K.png',
    'assets/Images/Alphabet/L.png',
    'assets/Images/Alphabet/M.png',
    'assets/Images/Alphabet/N.png',
    'assets/Images/Alphabet/O.png',
    'assets/Images/Alphabet/P.png',
    'assets/Images/Alphabet/Q.png',
    'assets/Images/Alphabet/R.png',
    'assets/Images/Alphabet/S.png',
    'assets/Images/Alphabet/T.png',
    'assets/Images/Alphabet/U.png',
    'assets/Images/Alphabet/V.png',
    'assets/Images/Alphabet/W.png',
    'assets/Images/Alphabet/X.png',
    'assets/Images/Alphabet/Y.png',
    'assets/Images/Alphabet/Z.png',
  ];

  //List of letters to anotate the images
  final List<String> letters = [
    'A',
    'B',
    'C',
    'D',
    'E',
    'F',
    'G',
    'H',
    'I',
    'J',
    'K',
    'L',
    'M',
    'N',
    'O',
    'P',
    'Q',
    'R',
    'S',
    'T',
    'U',
    'V',
    'W',
    'X',
    'Y',
    'Z',
  ];

  //A variable to track which letter is being displayed.
  var _currentLtr = 0;

  List<Widget> makeImage() {
    //get list of image locations
    return images
        .map((element) => ClipRRect(
              child: Image.asset(
                element,
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(15.0),
            ))
    //this creates a list of ClipRRect widgets which contain image assets
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
              Center(
                  child: Text(
                    letters[_currentLtr],
                    style:
                    TextStyle(fontSize: MediaQuery.of(context).size.width / 5),
                  )),
              CarouselSlider(
                  items: makeImage(),
                  options: CarouselOptions(
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 4),
                      enlargeCenterPage: true,
                      onPageChanged: (index, other) {
                        setState(() {
                          _currentLtr = index;
                        });
                      })),

              Container(
                  alignment: Alignment.bottomCenter,
                  padding: const EdgeInsets.all(40),
                  child: Text(
                    'Keep practicing the alphabet until you can sign it without looking at the tutorial',
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
