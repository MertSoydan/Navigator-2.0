import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScreenA extends StatelessWidget {
  const ScreenA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Screen A")),
      body: Center(
          child: Column(
        children: [
          const Text("Screen A"),
          OutlinedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Return First Screen")),
        ],
      )),
    );
  }
}
