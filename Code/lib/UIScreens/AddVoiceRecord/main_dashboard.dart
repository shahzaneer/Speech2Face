import 'package:flutter/material.dart';
import 'package:speech2face/Widgets/option_dashboard.dart';
import '../../Widgets/oval_design.dart';


class MainDashboard extends StatefulWidget {
  const MainDashboard({super.key});

  @override
  State<MainDashboard> createState() => _MainDashboardState();
}

class _MainDashboardState extends State<MainDashboard> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const OvalDesign(
              description: "Place Voice",
              assetlocation: "Assets/vectors/voiceRecordScreen.svg"),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Container(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        OptionDashboard(
                          ontap: (){},
                            svgLocation: "Assets/vectors/voicesquare.svg",
                            optionText: "Record Voice"),
                      const SizedBox(
                        width: 10,
                      ),
                    OptionDashboard(
                      ontap: (){},
                            svgLocation: "Assets/vectors/audio_add.svg",
                            optionText: "Existing Voice"),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    OptionDashboard(
                            ontap: (){},
                            svgLocation: "Assets/vectors/Video_add.svg",
                            optionText: "Upload Video"),
                      const SizedBox(
                        width: 10,
                      ),
                      OptionDashboard(
                        ontap: (){},
                            svgLocation: "Assets/vectors/helpandsupport.svg",
                            optionText: "Help and Support"),
                    ],
                  ),
                ],
              ),
            ),
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
