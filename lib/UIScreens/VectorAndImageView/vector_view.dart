import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:speech2face/Utils/colors.dart';
import 'package:speech2face/Widgets/our_button.dart';

class VectorView extends StatelessWidget {
  const VectorView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Coloors.kPrimaryColor,
        centerTitle: true,
        title: Text(
          "Vector Form",
          style: GoogleFonts.inter(
              fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 30,
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Coloors.kSecondaryColor.withOpacity(0.4),
                borderRadius: const BorderRadius.all(
                  Radius.circular(12),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 400,
                    width: 350,
                    child: Image.asset("assets/images/vector image.png"),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      OurButton(
                          description: "Customize Image",
                          width: 120,
                          height: 35,
                          color: Coloors.kPrimaryColor,
                          onTap: () {}),
                      const SizedBox(
                        width: 20,
                      ),
                      OurButton(
                          description: "Features",
                          width: 120,
                          height: 35,
                          color: Coloors.kPrimaryColor,
                          onTap: () {})
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Back?",
                      style: GoogleFonts.inter(
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                          color: Coloors.kBlack),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
        
      ),
    );
  }
}
