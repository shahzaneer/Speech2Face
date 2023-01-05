import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:speech2face/UIScreens/DashBoards/features_dashboard.dart';
import 'package:speech2face/Utils/colors.dart';
import 'package:speech2face/Widgets/our_button.dart';
import 'package:speech2face/Widgets/oval_design_logo.dart';

class AddVoiceRecord extends StatefulWidget {
  const AddVoiceRecord({super.key});

  @override
  State<AddVoiceRecord> createState() => _AddVoiceRecordState();
}

class _AddVoiceRecordState extends State<AddVoiceRecord> {
  bool bool1 = false, bool2 = false, bool3 = false, bool4 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const OvalDesignLogo(
                description: " Record Voice",
                assetlocation: "assets/vectors/voiceRecordScreen.svg"),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Add a record!",
              style:
                  GoogleFonts.inter(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            SvgPicture.asset(
              "assets/vectors/voice record.svg",
              height: 60,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                OurButton(
                    description: "add",
                    width: 100,
                    height: 35,
                    color: Coloors.kSecondaryColor,
                    onTap: () {}),
                const SizedBox(
                  width: 10,
                ),
                OurButton(
                    description: "Delete",
                    width: 100,
                    height: 35,
                    color: Coloors.kSecondaryColor,
                    onTap: () {}),
              ],
            ),
            const SizedBox(
              height: 7,
            ),
            const Divider(
              thickness: 1,
              color: Colors.black,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Column(
                children: [
                  VoiceRecordSelection(
                      ontap: () {
                        setState(() {
                          bool1 = true;
                        });
                      },
                      ondblTap: () {
                        setState(() {
                          bool1 = false;
                        });
                      },
                      isSelected: bool1),
                  const SizedBox(
                    height: 10,
                  ),
                  VoiceRecordSelection(
                      ontap: () {
                        setState(() {
                          bool2 = true;
                        });
                      },
                      ondblTap: () {
                        setState(() {
                          bool2 = false;
                        });
                      },
                      isSelected: bool2),
                  const SizedBox(
                    height: 10,
                  ),
                  VoiceRecordSelection(
                      ontap: () {
                        setState(() {
                          bool3 = true;
                        });
                      },
                      
                      ondblTap: () {
                        setState(() {
                          bool3 = false;
                        });
                      },
                      isSelected: bool3),
                  const SizedBox(
                    height: 10,
                  ),
                  VoiceRecordSelection(
                      ontap: () {
                        setState(() {
                          bool4 = true;
                        });
                      },
                      ondblTap: () {
                        setState(() {
                          bool4 = false;
                        });
                      },
                      isSelected: bool4),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const FeatuesDashboard()));

        },
        backgroundColor: Coloors.kPrimaryColor,
        child: const Icon(Icons.start_rounded),
      ),
    );
  }
}

class VoiceRecordSelection extends StatelessWidget {
  VoiceRecordSelection(
      {super.key,
      required this.isSelected,
      required this.ontap,
      required this.ondblTap});
  bool isSelected;
  VoidCallback ontap;
  VoidCallback ondblTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: ontap,
      onDoubleTap: ondblTap,
      child: Row(
        children: [
          SvgPicture.asset(
            "assets/vectors/voice record.svg",
            height: 60,
          ),
          const SizedBox(
            width: 4,
          ),
          isSelected
              ? Row(
                  children: const [
                    Icon(Icons.credit_score_sharp),
                    SizedBox(
                      width: 4,
                    ),
                    Icon(
                      Icons.delete,
                      color: Coloors.kRed,
                    )
                  ],
                )
              : const SizedBox(
                  height: 0,
                )
        ],
      ),
    );
  }
}
