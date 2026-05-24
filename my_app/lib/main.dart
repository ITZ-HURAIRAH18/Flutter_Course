import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Professional UI",

      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey.shade100,
        fontFamily: "Roboto",
      ), // <-- comma added here

      home: Scaffold(
        body: Container(
          width: 300,
          height: 200,
          color: Colors.yellow,
        ),
      ),
    );
  }
}