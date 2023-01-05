import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:speech2face/UIScreens/Feedback/feedback.dart';
import 'package:speech2face/Utils/colors.dart';
import 'package:speech2face/Widgets/oval_design.dart';

import '../../Widgets/our_button.dart';

class Insights extends StatelessWidget {
  const Insights({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const OvalDesign(
              description: "Insights Panel",
              assetlocation: "assets/vectors/insightsillustration.svg"),
          const SizedBox(
            height: 20,
          ),
          Text(
            " Your Pridicted Insights are ",
            style: GoogleFonts.inter(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Coloors.kBlack),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            alignment: Alignment.center,
            height: 150,
            width: 500,
            decoration: BoxDecoration(
              color: Coloors.kSecondaryColor.withOpacity(0.3),
              borderRadius: const BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(child: Image.asset("assets/images/details.png")),
                const SizedBox(width: 30,),
                Expanded(child: Image.asset("assets/images/insightsnutshell.png")),
              ],
            ),
          ),
          const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              OurButton(
                  description: "Share",
                  width: 120,
                  height: 45,
                  color: Coloors.kPrimaryColor,
                  onTap: () {}),
              const SizedBox(
                width: 20,
              ),
              OurButton(
                  description: "Feedback",
                  width: 120,
                  height: 45,
                  color: Coloors.kPrimaryColor,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const FeedbackScreen()));
                  })
            ],
          ),
          const SizedBox(
            height: 30,
          ),

          Expanded(
            child: Align(
              alignment: Alignment.topLeft,
              child: Image.asset(
                "assets/images/speech2face logo .png",
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
