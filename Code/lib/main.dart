import 'package:flutter/material.dart';

void main() {
  
  runApp(const Speech2Face());
}

class Speech2Face extends StatelessWidget {
  const Speech2Face({super.key});

  //* This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: null,
    );
  }
}
