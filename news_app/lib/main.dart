import 'package:flutter/material.dart';
import 'views/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      // ignore: prefer_const_constructors
      home: Home(),
    );
  }
}
// Reference: // https://nabendu82.medium.com/flutter-news-app-using-newsapi-2294c2dcf673