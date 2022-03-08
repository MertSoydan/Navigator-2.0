import 'package:flutter/material.dart';

import '../Model/screen_arg.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home Screen")),
      body: Center(
          child: Column(
        children: [
          OutlineButton(
            onPressed: () {
              Navigator.pushNamed(context, "/screenA");
            },
            child: const Text("ScreenA"),
          ),
          OutlinedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/screenB",
                    arguments: ScreenArguments("New Message", "Big WAR"));
              },
              child: const Text("Screen B")),
        ],
      )),
    );
  }
}
