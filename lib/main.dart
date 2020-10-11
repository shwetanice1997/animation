import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:lottie/lottie.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const TextStyle goldcoinGreyStyle = TextStyle(
      color: Colors.grey,
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
      fontFamily: "Product Sans");

  static const TextStyle goldCoinWhiteStyle = TextStyle(
      color: Colors.white,
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
      fontFamily: "Product Sans");

  static const TextStyle greyStyle =
      TextStyle(fontSize: 40.0, color: Colors.grey, fontFamily: "Product Sans");
        static const TextStyle whiteStyle =
      TextStyle(fontSize: 40.0, color: Colors.white, fontFamily: "Product Sans");

  static const TextStyle boldStyle = TextStyle(
    fontSize: 50.0,
    color: Colors.black,
    fontFamily: "Product Sans",
    fontWeight: FontWeight.bold,
  );

  static const TextStyle descriptionGreyStyle = TextStyle(
    color: Colors.grey,
    fontSize: 20.0,
    fontFamily: "Product Sans",
  );

  static const TextStyle descriptionWhiteStyle = TextStyle(
    color: Colors.white,
    fontSize: 20.0,
    fontFamily: "Product Sans",
  );

  final pages = [
    Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          
         // Image.asset("assets/img/firstImage.png",
            Lottie.network("https://assets2.lottiefiles.com/temporary_files/r5WAZZ.json",
              height: 300,
             width: 500,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Flutter",
                  style: greyStyle,
                ),
                Text(
                  "Animation",
                  style: boldStyle,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Flutter App using\n"
                  "Effective Animations",
                  style: descriptionGreyStyle,
                ),
              ],
            ),
          )
        ],
      ),
    ),
    Container(
      color: Color(0xFF00cc00),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
         
          Lottie.network("https://assets7.lottiefiles.com/packages/lf20_NjRqYM.json",
            height: 300,
             width: 500,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Flutter",
                  style: whiteStyle,
                ),
                Text(
                  "Animations",
                  style: boldStyle,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Flutter app using\n"
                   "Effective Animations",
                  style: descriptionWhiteStyle,
                ),
              ],
            ),
          )
        ],
      ),
    ),
     Container(
      color: Colors.lightBlueAccent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          
          Lottie.network(
            "https://assets2.lottiefiles.com/datafiles/Hc0DflKIkYg1j3u/data.json",
            height: 300,
             width: 500,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Flutter",
                  style: whiteStyle,
                ),
                Text(
                  "Animations",
                  style: boldStyle,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Flutter app using\n"
                  "Effective Animations",
                  style: descriptionWhiteStyle,
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: LiquidSwipe(
          pages: pages,
          enableLoop: true,
          fullTransitionValue: 300,
          enableSlideIcon: true,
          waveType: WaveType.liquidReveal,
          positionSlideIcon: 0.5,
        ),
      ),
    );
  }
}