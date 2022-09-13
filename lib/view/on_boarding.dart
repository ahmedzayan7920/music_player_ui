import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_player/view/home.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0.2,.5,.8],
              colors: [
                Color(0xff100919),
                Color(0xef140B1F),
                Color(0xff100919),
              ],
            ),
          ),
          child: Column(
            children: [
              const Spacer(),
              Image.asset(
                "assets/1.png",
                width: 220.px,
                height: 220.px,
              ),
              const Spacer(),
              Text(
                "Getting started",
                style: TextStyle(
                    fontSize: 30.px,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
               SizedBox(height: 13.px),
              Text(
                "Getting started Getting",
                style: TextStyle(
                  fontSize: 16.px,
                  color: const Color(0xCCFFFFFF),
                ),
              ),
               SizedBox(height: 40.px),
              GestureDetector(
                onTap: (){
                  Get.offAll(()=>const Home());
                },
                child: Container(
                  width: 150.px,
                  height: 60.px,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(90),
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xff886AE2),
                        Color(0xffA284F6),
                      ],
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Lets Go",
                        style: TextStyle(
                          fontSize: 21.px,
                          color: const Color(0xCCFFFFFF),
                        ),
                      ),
                      const Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 14,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
              const Spacer(),
              Text(
                "DIEMU",
                style: TextStyle(
                  fontSize: 23.px,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xCCFFFFFF),
                ),
              ),
              Text(
                "best music app",
                style: TextStyle(
                  fontSize: 10.px,
                  fontWeight: FontWeight.normal,
                  color: const Color(0x80FFFFFF),
                ),
              ),
               SizedBox(height: 40.px),
            ],
          ),
        ),
      ),
    );
  }
}
