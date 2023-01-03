import 'package:flutter/material.dart';
import 'package:speech2face/Utils/colors.dart';
import 'package:speech2face/Widgets/our_button.dart';
import 'package:speech2face/Widgets/oval_design.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool loading = false;

  @override
  void dispose() {
    super.dispose();

    // Jb memory men inki zarurat na rahe tou inko remove krdo

    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Expanded(
            child: OvalDesign(
                description: "Sign In",
                assetlocation: "Assets/vectors/acoountCreation.svg"),
          ),
          const SizedBox(
            height: 20,
          ),
          Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                children: [
                  TextFormField(
                    controller: emailController,
                    validator: ((value) {
                      if (value!.isEmpty) {
                        return "Email cannot be empty!";
                      } else {
                        return null;
                      }
                    }),
                    decoration: const InputDecoration(
                      hintText: "  Enter Email",
                      prefixIcon: Icon(Icons.email_rounded),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  TextFormField(
                    controller: passwordController,
                    validator: ((value) {
                      if (value!.isEmpty) {
                        return "Password cannot be empty!";
                      } else {
                        return null;
                      }
                    }),
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: "  Enter Password",
                      prefixIcon: Icon(Icons.lock),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  OurButton(
                      description: "Sign in",
                      width: 200,
                      height: 35,
                      color: Coloors.kPrimaryColor,
                      onTap: () {}),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Don't Have an Account? "),
              TextButton(
                onPressed: () {},
                child: const Text("Sign Up"),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: TextButton(
              onPressed: () {},
              child: const Text("Forgot Password"),
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.topLeft,
              child: Image.asset(
                "Assets/images/speech2face logo .png",
                width: 150,
                height: 200,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
