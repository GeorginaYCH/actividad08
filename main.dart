import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/scroll_design.dart';

void main() => runApp( MyApp());

class MyApp extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Actividad Asíncrona',
      initialRoute: 'scroll_screen',
      routes: {
        'scroll_screen':((_) => ScrollScreen()),
      },
    );
  }
}