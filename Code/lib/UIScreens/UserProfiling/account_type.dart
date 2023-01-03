import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:speech2face/Utils/colors.dart';
import 'package:speech2face/Widgets/our_button.dart';
import 'package:speech2face/Widgets/oval_design.dart';

class AccountType extends StatefulWidget {
  const AccountType({super.key});

  @override
  State<AccountType> createState() => _AccountTypeState();
}

class _AccountTypeState extends State<AccountType> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const OvalDesign(
              description: "Select Account Type",
              assetlocation: "Assets/vectors/acoountCreation.svg"),
          const SizedBox(
            height: 40,
          ),
          Text(
            "Who are you?",
            style: GoogleFonts.inter(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 50,
          ),
          OurButton(description: "Generic User", width: 200, height: 45, color: Coloors.kPrimaryColor, onTap: (){}),
          const SizedBox(
            height: 30,
          ),
          OurButton(description: "Security Agent", width: 200, height: 45, color: Coloors.kPrimaryColor, onTap: (){}),
          Padding(
            padding: const EdgeInsets.only(top: 120),
            child: Align(
              alignment: Alignment.bottomLeft,
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
