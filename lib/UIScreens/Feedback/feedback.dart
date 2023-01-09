
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:speech2face/Utils/colors.dart';
import 'package:speech2face/Utils/toast.dart';
import 'package:speech2face/Widgets/our_button.dart';
import '../../Widgets/oval_design.dart';

class FeedbackScreen extends StatefulWidget {
  const FeedbackScreen({super.key});

  @override
  State<FeedbackScreen> createState() => _FeedbackScreenState();
}

class _FeedbackScreenState extends State<FeedbackScreen> {
  double _currentSliderValue = 2;
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const OvalDesign(
              description: "Feedback",
              assetlocation: "assets/vectors/acoountCreation.svg"),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Leave a Feedback!",
            style: GoogleFonts.inter(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 30,
          ),
          Slider(
            thumbColor: Coloors.kSecondaryColor,
            activeColor: Coloors.kPrimaryColor,
            value: _currentSliderValue,
            max: 10,
            divisions: 5,
            label: _currentSliderValue.round().toString(),
            onChanged: (double value) {
              setState(() {
                _currentSliderValue = value;
              });
            },
          ),
          const SizedBox(
            height: 30,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 50, right: 50),
              child: SizedBox(
                height: 200,
                width: 350,
                child: TextField(
                  controller: _controller,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                OurButton(
                    description: "Submit",
                    width: 150,
                    height: 45,
                    color: Coloors.kSecondaryColor,
                    onTap: () {
                      Paigham.toastsMessage(
                          "Your Feedback has been sumbitted successfully");
                      setState(() {
                        _controller.clear();
                      });
                    }),
                const SizedBox(
                  width: 20,
                ),
                OurButton(
                    description: "back",
                    width: 150,
                    height: 45,
                    color: Coloors.kSecondaryColor,
                    onTap: () {
                      Navigator.of(context).pop();
                    }),
              ],
            ),
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
