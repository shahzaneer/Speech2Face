import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:speech2face/UIScreens/UserProfiling/sign_in_.dart';
import 'package:speech2face/UIScreens/UserProfiling/welcome_screen.dart';
import 'package:speech2face/Utils/colors.dart';

void main() async {
  // These are necessary for starting your Firebase Project
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class Speech2Face extends StatefulWidget {
  const Speech2Face({super.key});

  @override
  State<Speech2Face> createState() => _Speech2FaceState();
}

class _Speech2FaceState extends State<Speech2Face> {
  //* This widget is the root of my application.

  @override
  void initState() {
    SplashServices.isLogin(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Coloors.kPrimaryColor,
      body: Center(
        child: Image.asset("assets/images/logo.png"),
      ),
    );
  }
}

class SplashServices {
  static void isLogin(BuildContext context) {
    final auth = FirebaseAuth.instance;

// ger user login ho tou  screen dhikhao
    if (auth.currentUser != null) {
      Timer(
          const Duration(seconds: 3),
          () => Navigator.push(context,
              MaterialPageRoute(builder: ((context) => WelcomeScreen()))));
    }

    // wagirna Login krwao
    else {
      Timer(
          const Duration(seconds: 3),
          () => Navigator.push(context,
              MaterialPageRoute(builder: ((context) => const LoginScreen()))));
    }
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Speech2Face(),
    );
  }
}
