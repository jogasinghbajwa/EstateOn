import 'package:estate_on/Constants.dart';
import 'package:flutter/material.dart';

class IntroActivity2 extends StatefulWidget {
  const IntroActivity2({Key? key}) : super(key: key);

  final String descriptionTitle =
      "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.";

  @override
  State<IntroActivity2> createState() => _IntroActivity2State();
}

class _IntroActivity2State extends State<IntroActivity2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.white,
      child: Column(
        children: [
          Spacer(),
          // const SizedBox(height: 66),
          Image.asset(
            'assets/images/IntroTitle2.png',
            // fit: BoxFit.contain,
            // height: 400,
            width: 300,
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Text(widget.descriptionTitle,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey)),
          ),
          // Image.asset(
          //   'assets/images/IntroDescription.png',
          //   // fit: BoxFit.contain,
          //   // height: 400,
          //   width: 300,
          // ),
          // const Text("data sadsadsad"),
          // const SizedBox(height: 20),
          // ElevatedButton(
          //   child: const Text('Next'),
          //   onPressed: () {
          //     print('Next tapped');
          //   },
          //   style: ButtonStyle(
          //       padding: MaterialStateProperty.resolveWith<EdgeInsetsGeometry>(
          //           (Set<MaterialState> states) {
          //         return const EdgeInsets.fromLTRB(60, 15, 60, 15);
          //       }),
          //       backgroundColor:
          //           MaterialStateProperty.all<Color>(kSunsetOrange)),
          // ),
          const SizedBox(height: 20),

          Stack(children: [
            Image.asset(
              'assets/images/Home2.png',
              // fit: BoxFit.contain,
              // height: 400,
              width: 400,
            ),
            Positioned(
                // width: 400,
                left: 50.0,
                // right: 0.0,
                bottom: 40.0,
                child: Center(
                  child: Row(
                    children: [
                      TextButton(
                          onPressed: () {},
                          // color: Colors.orange,
                          // padding: EdgeInsets.all(10.0),
                          child: Column(
                            children: <Widget>[
                              Image.asset('assets/images/Arrow.png'),
                              // Text("Add")
                            ],
                          )),
                      ElevatedButton(
                        child: const Text(
                          'Get Started',
                          style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        onPressed: () {
                          print('Get started tapped');
                        },
                        style: ButtonStyle(
                            padding: MaterialStateProperty.resolveWith<
                                    EdgeInsetsGeometry>(
                                (Set<MaterialState> states) {
                              return const EdgeInsets.fromLTRB(60, 15, 60, 15);
                            }),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                kSunsetOrange)),
                      ),
                    ],
                  ),
                )),
          ]),
        ],
      ),
    ));
  }
}
