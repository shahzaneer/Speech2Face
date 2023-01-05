import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:speech2face/UIScreens/Chatbot/chatbot_screen.dart';
import 'package:speech2face/UIScreens/PlaceVoice/record_voice.dart';
import 'package:speech2face/UIScreens/UserProfiling/sign_in_.dart';
import 'package:speech2face/Utils/colors.dart';
import 'package:speech2face/Utils/toast.dart';
import 'package:speech2face/Widgets/option_dashboard.dart';
import '../../Widgets/oval_design.dart';

class MainDashboard extends StatefulWidget {
  const MainDashboard({super.key});

  @override
  State<MainDashboard> createState() => _MainDashboardState();
}

class _MainDashboardState extends State<MainDashboard> {
  final FirebaseAuth auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Coloors.kSecondaryColor.withOpacity(0.5),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 450),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "   Shahzaneer Ahmed",
                style: GoogleFonts.abhayaLibre(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Coloors.kWhite),
              ),
              const SizedBox(
                width: 30,
              ),
              IconButton(
                icon: const Icon(Icons.logout, color: Colors.white,),
                onPressed: () {
                  auth.signOut().then((value) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const LoginScreen())));
                  }).then((value) {
                    Paigham.toastsMessage("Your Logged Out!");
                  }).onError((error, stackTrace) {
                    Paigham.toastsMessage("Login was not Successfull");
                  });
                },
              )
            ],
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const OvalDesign(
              description: "Place Voice",
              assetlocation: "assets/vectors/voiceRecordScreen.svg"),
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
                          ontap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const AddVoiceRecord()));
                          },
                          svgLocation: "assets/vectors/voicesquare.svg",
                          optionText: "Record Voice"),
                      const SizedBox(
                        width: 10,
                      ),
                      OptionDashboard(
                          ontap: () {},
                          svgLocation: "assets/vectors/audio_add.svg",
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
                          ontap: () {},
                          svgLocation: "assets/vectors/Video_add.svg",
                          optionText: "Upload Video"),
                      const SizedBox(
                        width: 10,
                      ),
                      OptionDashboard(
                          ontap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const ChatbotScreen()));
                          },
                          svgLocation: "assets/vectors/helpandsupport.svg",
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
