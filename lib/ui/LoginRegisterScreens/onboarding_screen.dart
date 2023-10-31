import 'package:blood_donation_app/ui/LoginRegisterScreens/welcome_screen.dart';
import 'package:blood_donation_app/ui/home_screen.dart';
import 'package:blood_donation_app/widgets/constant_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/reusable_button.dart';
import 'login.dart';
import 'register_screen.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int currentpage = 0;
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        scrollDirection: Axis.horizontal,
        onPageChanged: (index) {
          setState(() {
            currentpage = index;
          });
        },
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 114),
                child: Container(
                    width: 280,
                    height: 266,
                    child: SvgPicture.asset(
                      "assets/images/bro.svg",
                      fit: BoxFit.cover,
                    )),
              ),
              Padding(
                padding: EdgeInsets.only(top: 90),
                child: Text(
                  "Find Blood Donors",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 24,
                  ),
                ),
              ),
              const SizedBox(
                height: 38,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Arcu tristique tristique quam in.",
                  style: GoogleFonts.poppins(
                    color: textColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 19,
              ),
              row(),
              const Spacer(),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.only(left: 22, right: 22),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        pageController.animateToPage(
                            Get.to(const HomeScreen()) as int,
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.ease);
                      },
                      child: Center(
                          child: Text(
                        "Skip",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 19,
                        ),
                      )),
                    ),
                    GestureDetector(
                      onTap: () {
                        pageController.animateToPage(1,
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.ease);
                      },
                      child: Center(
                          child: Text(
                        "Next",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 19,
                        ),
                      )),
                    )
                  ],
                ),
              ))
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 115),
                child: SizedBox(
                    width: 280,
                    height: 265,
                    child: SvgPicture.asset(
                      "assets/images/rafiki.svg",
                      fit: BoxFit.contain,
                    )),
              ),
              const SizedBox(height: 65),
              Text(
                "Find Blood Donors",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500, fontSize: 24),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Arcu tristique tristique quam in.",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                      color: textColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(height: 10),
              row(),
              const Spacer(),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.only(left: 22, right: 22),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        pageController.animateToPage(
                            Get.to(const HomeScreen()) as int,
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.ease);
                      },
                      child: Center(
                          child: Text(
                        "Skip",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 19,
                        ),
                      )),
                    ),
                    GestureDetector(
                      onTap: () {
                        pageController.animateToPage(
                            Get.to(const WelcomeScreen()) as int,
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.ease);
                      },
                      child: Center(
                          child: Text(
                        "Next",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 19,
                        ),
                      )),
                    )
                  ],
                ),
              ))
            ],
          ),
        ],
      ),
    );
  }

  Widget row() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        currentpage == 0
            ? Container(
                width: 45,
                height: 10,
                decoration: BoxDecoration(
                    color: mainColor, borderRadius: BorderRadius.circular(8)),
              )
            : Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10)),
              ),
        const SizedBox(
          width: 5,
        ),
        currentpage == 1
            ? Container(
                width: 45,
                height: 10,
                decoration: BoxDecoration(
                    color: mainColor, borderRadius: BorderRadius.circular(8)),
              )
            : Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10)),
              ),
      ],
    );
  }
}
