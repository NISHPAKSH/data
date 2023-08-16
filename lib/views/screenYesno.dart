import 'package:ai4one/views/home.dart';
import 'package:ai4one/widget/components.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ai4one/utils/images_utils.dart';
import 'package:ai4one/views/screenCont.dart';

class ScreenYesno extends StatefulWidget {
  @override
  State<ScreenYesno> createState() => ScreenYesnoState();
}

class ScreenYesnoState extends State<ScreenYesno> {
  //final controller = Get.put(OnboardController());

  String bg1 = ImageUtils.coreBackgound3;
  String bgR = ImageUtils.coreBackgoundRN;
  String bgG = ImageUtils.coreBackgound2;
  String yes = ImageUtils.yes;
  String yesclick = ImageUtils.yesButtonclick;
  String no = ImageUtils.no;
  String noclick = ImageUtils.noButtonclick;
  String greeEffect = ImageUtils.greeEffect;
  String redEffect = ImageUtils.redEffect;
  String center = ImageUtils.center;
  bool effectgreen = false;
  @override
  void initState() {
    super.initState();
    setState(() {
      effectgreen = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.fromLTRB(0, 80, 0, 0),
        width: screenWidth,
        height: screenHeight,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(bg1),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            effectgreen == false
                ? Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                    width: 350,
                    child: Image(
                      image: AssetImage(center),
                    ))
                : const SizedBox(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () => {
                    setState(() {
                      yes = yesclick;
                    }),
                    Future.delayed(Duration(milliseconds: 500), () {
                      setState(() {
                        bg1 = greeEffect;
                        effectgreen = true;
                      });
                    }),
                    Future.delayed(const Duration(seconds: 1), () {
                      Get.to(const ScreenCont());
                    }),
                  },
                  child: effectgreen == false
                      ? Container(
                          width: 150,
                          child: Image(
                            image: AssetImage(yes),
                          ))
                      : const SizedBox(),
                ),
                GestureDetector(
                  onTap: () => {
                    setState(() {
                      no = noclick;
                    }),
                    Future.delayed(const Duration(milliseconds: 500), () {
                      setState(() {
                        bg1 = redEffect;
                        effectgreen = true;
                      });
                    }),
                    Future.delayed(const Duration(seconds: 1), () {
                      Get.to(const ScreenCont());
                    }),
                  },
                  child: effectgreen == false
                      ? SizedBox(
                          width: 150,
                          child: Image(
                            image: AssetImage(no),
                          ))
                      : const SizedBox(),
                ),
              ],
            ),
            const Expanded(child: SizedBox()),
           // Components.homebutton(width:screenWidth,height: screenHeight)
            effectgreen == false?GestureDetector(
              onTap: () => Get.to(const Home()),
              child: Container(
                  margin: const EdgeInsets.fromLTRB(0, 40, 0, 38),
                  width: 100,
                  child: Image(
                    image: AssetImage(ImageUtils.logo),
                  )),
            ):SizedBox(),
          ],
        ),
      ),
    );
  }
}
