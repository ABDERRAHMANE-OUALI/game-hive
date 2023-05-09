import 'package:cloud_storage/core/theme.dart';
import 'package:cloud_storage/presentation/onboarding-screen/onboarding_screen.dart';
import 'package:cloud_storage/presentation/widgets/game_courses.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
          image:
              DecorationImage(image: AssetImage("assets/mainBackground.png"))),
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 21),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 240,
                  height: 240,
                  child: RiveAnimation.asset(
                    "assets/userProfile.riv",
                    artboard: "userProfile",
                    animations: ["idle"],
                  ),
                ),
                Text(
                  "Games For Your Needs",
                  style: Theme.of(context)
                      .textTheme
                      .headlineLarge
                      ?.copyWith(color: Colors.white),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 18.0),
                  child: Text(
                    "1500 Game - 3 Store Distributor",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.grey[300]),
                  ),
                ),
              ],
            ),
          ),
          const Expanded(child: GameCourses())
        ],
      ),
    ));
  }
}
