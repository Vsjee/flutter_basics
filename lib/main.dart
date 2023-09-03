import 'package:flutter/material.dart';

import 'package:basics/widgets/gradient_container.dart';

const List<Color> linearGradientColors = [
  Color.fromARGB(255, 33, 0, 90),
  Color.fromARGB(255, 81, 0, 158),
];

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
        body: GradientContainer(colors: linearGradientColors)),
  ));
}
