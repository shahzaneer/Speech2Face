import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OurButton extends StatelessWidget {
  final String description;
  final double width;
  final double height;
  final Color color;
  final VoidCallback onTap;

  const OurButton(
      {super.key,
      required this.description,
      required this.width,
      required this.height,
      required this.color,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Ink(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.all(
            Radius.circular(12),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            description,
            style: GoogleFonts.inter(fontSize: 18, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
