import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../Widgets/oval_design.dart';

class License_ID extends StatefulWidget {
  const License_ID({super.key});

  @override
  State<License_ID> createState() => _License_IDState();
}

class _License_IDState extends State<License_ID> {
  final licenseIDController = TextEditingController();

  @override
  void dispose() {
    licenseIDController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Expanded(
            child:  OvalDesign(
                description: "License ID",
                assetlocation: "Assets/vectors/acoountCreation.svg"),
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            "Security Agent's License ID",
            style: GoogleFonts.inter(fontSize: 26, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: TextFormField(
              controller: licenseIDController,
              validator: ((value) {
                if (value!.isEmpty) {
                  return "License cannot be empty!";
                } else {
                  return null;
                }
              }),
              decoration: const InputDecoration(
                hintText: "License ID",
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {},
                child: SvgPicture.asset("Assets/vectors/back.svg"),
              ),
              const SizedBox(
                width: 50,
              ),
              GestureDetector(
                onTap: () {},
                child: SvgPicture.asset("Assets/vectors/proceed.svg"),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "  Back",
                style: GoogleFonts.inter(
                    fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                width: 50,
              ),
              Text(
                "    Proceed",
                style: GoogleFonts.inter(
                    fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
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
