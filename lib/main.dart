import 'package:flutter/material.dart';
import 'package:ingressos/constant.dart';
import 'package:ingressos/screen/splash/splash_sreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Unique Ingressos',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: mBackgroundColor,
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}
