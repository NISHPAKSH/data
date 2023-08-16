import 'package:ai4one/utils/app_strings.dart';
import 'package:ai4one/utils/color_utils.dart';
import 'package:ai4one/views/home.dart';
import 'package:flutter/material.dart';
import 'package:ai4one/utils/images_utils.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class HelpScreen extends StatefulWidget {
  const HelpScreen({super.key});

  @override
  State<HelpScreen> createState() => HelpScreenState();
}

class HelpScreenState extends State<HelpScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
          width: screenWidth,
          height: screenHeight,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(ImageUtils.helpBG),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * .05,
              ),
              Text(
                "Help Section",
                textAlign: TextAlign.center,
                style: TextStyle(
                    height: 1,
                    shadows: const [
                      Shadow(color: Color(0xFFF9F8FC), blurRadius: 50)
                    ],
                    color: ColorUtils.black,
                    fontSize: 44,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .07,
              ),
              textSection(context, 'Purpose of this app'),
              textSection(context, 'Who is Uno?'),
              textSection(context, 'Interactive Mode'),
              textSection(context, 'Recommended time use'),
              textSection(context, 'Settings'),
              textSection(context, 'Monitored progress'),
              textSection(context, 'How does the app work'),
              textSection(context, 'Privacy'),
              Text(
                AppStrings.webpage,
                style: TextStyle(
                  shadows: [Shadow(color: Colors.white70, blurRadius: 20)],
                  fontFamily: 'MyriadPro-Regular',
                  fontSize: 20,
                  color: const Color(0xff000000),
                ),
              ),
              InkWell(
                onTap: () => Get.to(const Home()),
                child: Container(
                    margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                    width: 100,
                    child: Image(
                      image: AssetImage(ImageUtils.logo),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget textSection(BuildContext context, String title) {
  return SizedBox(
    height: 56,
    width: MediaQuery.of(context).size.width * .72,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            Image(
              //width: 55,
              height: 55,
              fit: BoxFit.fitWidth,
              image: AssetImage(ImageUtils.audio),
            ),
            Text(
              title,
              style: TextStyle(
                  fontSize: 18,
                  color: ColorUtils.black,
                  fontWeight: FontWeight.w400),
            ),
          ],
        )
      ],
    ),
  );
}
