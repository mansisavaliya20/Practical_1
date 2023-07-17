import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practical_m/views/home_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: MyApp(),
      routes: {
        'HomeScreen': (context) => HomeScreen(),
      },
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, 'HomeScreen');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.network(
            "https://cdn-abeco.nitrocdn.com/vMCLEGbZccgRIgpGXvgkDDYcPokgENUq/assets/images/optimized/rev-4fff98c/gatheringdreams.com/wp-content/uploads/2019/10/dreams-quotes-03.jpg"),
      ),
    );
  }
}
