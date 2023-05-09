import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnBoardingScreen extends StatelessWidget {
  final String assetsUrl;
  const OnBoardingScreen({super.key, required this.assetsUrl});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 329,
        width: MediaQuery.of(context).size.width,
        child: SvgPicture.asset(assetsUrl),
      ),
    );
  }
}
