import 'package:cs2/MyHomePage.dart';
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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 255, 153, 0),surface: const Color.fromARGB(255, 39, 39, 39)),
         scaffoldBackgroundColor: Color.fromARGB(255, 10, 10, 10),
        primaryTextTheme: TextTheme(titleLarge: TextStyle(color: Colors.white)),
        useMaterial3: true,
      ),
      home:  MyHomePage(),
    );
  }
}





