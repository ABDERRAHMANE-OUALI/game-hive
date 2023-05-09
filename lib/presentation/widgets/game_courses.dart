import 'package:cloud_storage/presentation/game-details/game_details.dart';
import 'package:cloud_storage/presentation/onboarding-screen/onboarding_screen.dart';
import 'package:flutter/material.dart';

class GameCourses extends StatelessWidget {
  const GameCourses({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const GameDetails(artboard: "pyramid"),
                ));
          },
          child: const OnBoardingScreen(
            assetsUrl: "assets/onboardingone.svg",
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const GameDetails(artboard: "bubble"),
                ));
          },
          child: const OnBoardingScreen(
            assetsUrl: "assets/onboardingtwo.svg",
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const GameDetails(artboard: "planet"),
                ));
          },
          child: const OnBoardingScreen(
            assetsUrl: "assets/onboardingthree.svg",
          ),
        ),
      ],
    );
  }
}
