import 'package:caffe/core/constants/colors.dart';
import 'package:caffe/core/constants/images.dart';
import 'package:caffe/presentation/widgets/buttons.dart';
import 'package:caffe/presentation/widgets/form.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';
import 'signup_screen.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  //controller
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
            children: [
              Image.asset(AppImages.splash, height: 168),
              const SizedBox(height: 44),
              const Text('Sign in', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              const SizedBox(height: 40),
              CustomFormField(controller: emailController, hintText: 'Email'),
              const SizedBox(height: 24),
              CustomFormField(controller: passwordController, hintText: 'Password'),
              const SizedBox(height: 40),
              CustomButton(
                label: 'Sign in',
                fun: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
                },
              ),
              const SizedBox(height: 20),
              const CustomTextButton(label: 'Forget password?'),
              const SizedBox(height: 28),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(border: Border.all(width: 1, color: AppColors.borderColor), borderRadius: const BorderRadius.all(Radius.circular(36))),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
                      child: Row(
                        children: [
                          Image.asset(AppImages.google, height: 24),
                          const SizedBox(width: 16),
                          const Text('Google')
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(border: Border.all(width: 1, color: AppColors.borderColor), borderRadius: const BorderRadius.all(Radius.circular(36))),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
                      child: Row(
                        children: [
                          Image.asset(AppImages.fb, height: 24),
                          const SizedBox(width: 16),
                          const Text('Facebook')
                        ],
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Don’t have an account?', style: TextStyle(fontSize: 16)),
                  CustomTextButton(
                    label: 'Sign up',
                    fun: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const SignupPage()));
                    },
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
