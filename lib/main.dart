import 'package:flutter/material.dart';
import 'package:better_notes/debug-page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.light
      ),
      darkTheme: ThemeData(
        primarySwatch:Colors.indigo,
        brightness: Brightness.dark 
      ),
      themeMode: ThemeMode.system,
      home: DebugPage(),
    );
  }
}
