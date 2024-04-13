import 'package:flutter/material.dart';
import 'package:poll_creation/HomePage.dart';
import 'package:poll_creation/features/poll_creation/screens/new_poll_screen.dart';
import 'package:poll_creation/features/poll_creation/services/Poll_Services.dart';

import 'model/data.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: ThemeData(

      ),
      home: HomePage(),
    );
  }
}
