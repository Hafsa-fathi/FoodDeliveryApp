import 'package:flutter/material.dart';
import 'screens/main_screen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext contex) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Food Delivery App",
      theme: ThemeData(primaryColor: Colors.blueAccent),
      home: MainScreen(),
    );
  }
}
