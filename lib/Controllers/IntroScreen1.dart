import 'package:estate_on/Constants.dart';
import 'package:flutter/material.dart';

class IntroActivity1 extends StatefulWidget {
  const IntroActivity1({Key? key}) : super(key: key);

  final String descriptionTitle =
      "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.";

  @override
  State<IntroActivity1> createState() => _IntroActivity1State();
}

class _IntroActivity1State extends State<IntroActivity1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.white,
      child: Column(
        children: [
          Container(
            child: Stack(
              children: [
                Image.asset(
                  'assets/images/Home.png',
                  fit: BoxFit.contain,
                  // height: 400,
                  // width: 300,
                ),
                Positioned(
                  // left: 0.0,
                  right: 10.0,
                  top: 40.0,
                  child: ElevatedButton(
                    child: const Text(
                      'Skip',
                      style: TextStyle(color: Colors.black),
                    ),
                    onPressed: () {
                      print('Skip Tapped');
                    },
                    style: ElevatedButton.styleFrom(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          /// Used to set corner radius using border
                          borderRadius: BorderRadius.circular(20.0),
                          side: const BorderSide(color: kLightGray),
                        ),
                        primary: kLightGray),
                  ),
                )
              ],
            ),
            // color: Colors.red,
          ),
          const SizedBox(height: 20),
          Image.asset(
            'assets/images/IntroTitle.png',
            // fit: BoxFit.contain,
            // height: 400,
            width: 300,
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Text(widget.descriptionTitle,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey)),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            child: const Text('Next'),
            onPressed: () {
              print('Next tapped');
            },
            style: ButtonStyle(
                padding: MaterialStateProperty.resolveWith<EdgeInsetsGeometry>(
                    (Set<MaterialState> states) {
                  return const EdgeInsets.fromLTRB(60, 15, 60, 15);
                }),
                backgroundColor:
                    MaterialStateProperty.all<Color>(kSunsetOrange)),
          ),
        ],
      ),
    ));
  }
}
