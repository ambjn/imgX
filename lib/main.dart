import 'package:flutter/material.dart';
import 'package:imgx/screens/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'imgX',
      theme: ThemeData.light(),
      home: const HomeScreen(),
    );
  }
}
