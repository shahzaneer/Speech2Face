import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:speech2face/Utils/colors.dart';

class OvalDesignLogo extends StatelessWidget {
  final String description;
  final String assetlocation;

  const OvalDesignLogo({
    Key? key,
    required this.description,
    required this.assetlocation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      decoration: const BoxDecoration(
        color: Coloors.kPrimaryColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(100),
          bottomRight: Radius.circular(100),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                  child: Image.asset(
                "Assets/images/speech2face logo .png",
                height: 100,
                width: 125,
              )),
              Expanded(
                child: Text(
                  description,
                  style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                          fontSize: 23,
                          color: Coloors.kWhite,
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 40,
          ),
          Expanded(
            child: SvgPicture.asset(
              assetlocation,
              height: 100,
              width: 40,
            ),
          ),
        ],
      ),
    );
  }
}
