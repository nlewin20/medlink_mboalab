import 'package:flutter/material.dart';
import 'package:medlink/core/theme.dart';

import 'screens/homescreen/homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: customLightTheme(context),
      home: const HomeScreen(),
    );
  }
}


