import 'package:flutter/material.dart';

class LoginActivity extends StatefulWidget {
  const LoginActivity({Key? key}) : super(key: key);

  @override
  State<LoginActivity> createState() => _LoginActivityState();
}

class _LoginActivityState extends State<LoginActivity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              TextButton(
                  onPressed: () {
                    if (Navigator.canPop(context)) {
                      Navigator.pop(context);
                    }
                  },
                  // color: Colors.orange,
                  // padding: EdgeInsets.all(10.0),
                  child: Column(
                    children: <Widget>[
                      Image.asset('assets/images/Arrow.png'),
                      // Text("Add")
                    ],
                  )),
              const Spacer(),
            ],
          ),
          const Spacer(),
          const Text("Login Activity"),
          const Spacer(),
        ],
      )),
    );
  }
}
