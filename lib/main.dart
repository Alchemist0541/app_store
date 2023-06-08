import 'package:app_store/pages/homepage.dart';
import 'package:app_store/pages/homepage_mobile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() => MainState();
}

class MainState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;
    // print(screensize.width.toString());

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home: screensize.width > 600 ? const HomePage() : const HomePageMobile(),
    );
  }
}
