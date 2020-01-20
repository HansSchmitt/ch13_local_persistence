import 'package:flutter/material.dart';
import 'pages/home.dart';


void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Local Persistence',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        bottomAppBarColor: Colors.blue,
      ),
      home: Home(),
    );
  }
}

