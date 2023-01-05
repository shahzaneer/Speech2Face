import 'package:flutter/material.dart';
import 'package:speech2face/UIScreens/InsightsPanel/insights.dart';
import 'package:speech2face/UIScreens/VectorAndImageView/image_view.dart';
import 'package:speech2face/UIScreens/VectorAndImageView/vector_view.dart';
import 'package:speech2face/Widgets/option_dashboard.dart';
import 'package:speech2face/Widgets/oval_design_logo.dart';

class FeatuesDashboard extends StatefulWidget {
  const FeatuesDashboard({super.key});

  @override
  State<FeatuesDashboard> createState() => _FeatuesDashboardState();
}

class _FeatuesDashboardState extends State<FeatuesDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const OvalDesignLogo(
              description: "Specification",
              assetlocation: "assets/vectors/processing.svg"),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50),
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
                                    builder: (context) => const VectorView()));

                          },
                          svgLocation: "assets/vectors/vectorimagelogo.svg",
                          optionText: "Vector Form"),
                      const SizedBox(
                        width: 10,
                      ),
                      OptionDashboard(
                          ontap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const ImageView()));
                          },
                          svgLocation: "assets/vectors/imageFormLogo.svg",
                          optionText: "Image Form"),
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
                          svgLocation: "assets/vectors/imageCustomizationLogo.svg",
                          optionText: "Customize Image"),
                      const SizedBox(
                        width: 10,
                      ),
                      OptionDashboard(
                          ontap: () {},
                          svgLocation: "assets/vectors/featuresEnhancerLogo.svg",
                          optionText: "Features Enhancer"),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      OptionDashboard(
                          ontap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Insights()));

                          },
                          svgLocation: "assets/vectors/insights.svg",
                          optionText: "Insights"),
                      const SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
