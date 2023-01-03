import 'package:flutter/material.dart';
import 'package:speech2face/UIScreens/AddVoiceRecord/main_dashboard.dart';
import 'package:speech2face/UIScreens/UserProfiling/account_type.dart';
import 'package:speech2face/UIScreens/UserProfiling/license_id.dart';
import 'package:speech2face/UIScreens/UserProfiling/sign_up.dart';

void main() {
  runApp(const Speech2Face());
}

class Speech2Face extends StatelessWidget {
  const Speech2Face({super.key});

  //* This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Speech2Face',
      theme: ThemeData(),
      home: MainDashboard(),
      
    );
  }
}
