import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:speech2face/Utils/colors.dart';

class OptionDashboard extends StatelessWidget {
  final String svgLocation;
  final String optionText;
  Color color;
  Color iconColor;
  final VoidCallback ontap;

  OptionDashboard(
      {super.key,
      required this.svgLocation,
      required this.optionText,
      this.color = Coloors.kOffWhite,
      this.iconColor = Coloors.kSecondaryColor, required this.ontap});

  final textStyle =
      GoogleFonts.inter(fontSize: 12, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      onHover: (value) {
        color = Coloors.kPrimaryColor;
        iconColor = Coloors.kBlack;
      },
      child: Ink(
        height: 120,
        width: 145,
        decoration: const BoxDecoration(
          color: Coloors.kOffWhite,
          boxShadow: [BoxShadow(blurRadius: 1, spreadRadius: 0.2)],
          borderRadius: BorderRadius.all(
            Radius.circular(40),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: SvgPicture.asset(
                svgLocation,
                height: 40,
                width: 40,
                color: Coloors.kSecondaryColor,
              ),
            ),
            const SizedBox(
              height: 7,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text(
                optionText,
              ),
            )
          ],
        ),
      ),
    );
  }
}
