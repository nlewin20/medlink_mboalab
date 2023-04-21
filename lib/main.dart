import 'package:flutter/material.dart';
import 'package:medlink/core/theme.dart';
import 'package:medlink/screens/hospital_details_screen/hospital_details_screen.dart';

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

      /// Todo: rework routes to use Navigator 2.0
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        HospitalDetailsScreen.id: (context) => HospitalDetailsScreen(),
      },
    );
  }
}
