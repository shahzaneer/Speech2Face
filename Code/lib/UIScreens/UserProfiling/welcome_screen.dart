import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:speech2face/Utils/colors.dart';
import 'package:speech2face/Widgets/our_button.dart';
import 'package:speech2face/Widgets/oval_design.dart';

class WelcomeScreen extends StatelessWidget {
  WelcomeScreen({super.key});

  final style1 = GoogleFonts.inter(fontWeight: FontWeight.w700, fontSize: 40);

  final style2 =
      GoogleFonts.abhayaLibre(fontWeight: FontWeight.w100, fontSize: 16);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const OvalDesign(
              description: "Welcome Dear!",
              assetlocation: "Assets/vectors/welcome.svg"),
          const Expanded(
            child: SizedBox(
              height: 30,
            ),
          ),
          Text(
            "Hey",
            style: style1,
          ),
          Text(
            "Shahzaneer!",
            style: style1,
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Text(
              """
            Speech2Face aims to predicts the vector and facial features from voice by using the power of its powerful AI Engine! 
            So get ready to witness the greatness of Speech2Face!
            """,
              style: style2,
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          OurButton(
            description: "Get Started?",
            width: 170,
            height: 45,
            color: Coloors.kPrimaryColor,
            onTap: () {
              debugPrint("started .. ");
            },
          ),
          const Expanded(
            child: SizedBox(
              height: 100,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Image.asset(
                  "Assets/images/speech2face logo .png",
                  width: 150,
                  height: 200,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
