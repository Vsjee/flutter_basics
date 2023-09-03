import 'package:flutter/material.dart';

import 'package:basics/widgets/gradient_container.dart';

void main() {
  runApp(MaterialApp(
    // remove the debug banner
    debugShowCheckedModeBanner: false,

    // global theme for the app
    theme: ThemeData(
      useMaterial3: true,
    ),

    // renders the main widget root
    home: const Scaffold(
        backgroundColor: Color.fromARGB(255, 65, 7, 166),
        body: GradientContainer()),
  ));
}
