import 'package:ai4one/views/screenEffect.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ai4one/utils/images_utils.dart';

import '../widget/components.dart';

class UnoStartScreen extends StatefulWidget {
  const UnoStartScreen({super.key});

  @override
  State<UnoStartScreen> createState() => UnoStartScreenState();
}

class UnoStartScreenState extends State<UnoStartScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.fromLTRB(0, 150, 0, 0),
        width: screenWidth,
        height: screenHeight,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(ImageUtils.backgound1),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "Welcome to the interactive",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      shadows: [Shadow(color: Color(0xFFFDFDFD), blurRadius: 50)],
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                      width: screenWidth/1.62,
                      // width: 300,
                      child: Text(
                        "UNO",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            height: 1,
                            shadows: [
                              Shadow(color: Color(0xFFF9F8FC), blurRadius: 50)
                            ],
                            color: Colors.white,
                            fontSize: 100,
                            fontWeight: FontWeight.bold),
                      )),
                  Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                      width: screenWidth/1.8,
                      // width: 250,
                      child: const Text(
                        "- Explore your inner world - ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            height: 1,
                            shadows: [
                              Shadow(color: Color(0xFFF9F8FC), blurRadius: 30)
                            ],
                            color: Color(0xFFBC9D92),
                            fontSize: 19,
                            fontWeight: FontWeight.w500),
                      )),
                  Container(
                      margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                      width: screenWidth/1.8,
                      // width: 250,
                      child: const Text(
                        'Based on your feedback in "Priorities," "Tactics" and "Mindset" sections, experience a personalized journey of self-discovery.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          height: 1,
                          shadows: [Shadow(color: Color(0xFFF9F8FC), blurRadius: 30)],
                          color: Color(0xFF000105),
                          fontSize: 19.5,
                        ),
                      )),
                  GestureDetector(
                    onTap: () => Get.to(ScreenEffect()),
                    child: Container(
                        margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                        width: screenWidth/1.7,
                        //width: 240,
                        child: Image(
                          image: AssetImage(ImageUtils.startbutton),
                        )),
                  ),
                ],
              ),
            ),
          
          
          

            Components.homebutton(width:screenWidth,height: screenHeight)
          ],
        ),
      ),
    );
  }
}
