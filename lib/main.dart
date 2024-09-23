import 'package:caffe/core/constants/colors.dart';
import 'package:caffe/core/constants/images.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      home: SplashScreen(),
    ));

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Image.asset(
          AppImages.splash,
          height: 168,
        ),
        const SizedBox(
          height: 100,
        ),
        const LinearProgressIndicator(
          color: AppColors.primary,
        )
      ],
    ));
  }
}
