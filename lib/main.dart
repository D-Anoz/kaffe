import 'package:caffe/core/constants/colors.dart';
import 'package:caffe/core/constants/images.dart';
import 'package:caffe/presentation/screens/signin_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      home: SplashScreen(),
    ));

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const SigninScreen())));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
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
