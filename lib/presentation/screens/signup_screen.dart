import 'package:caffe/presentation/screens/signin_screen.dart';
import 'package:flutter/material.dart';

import '../../core/constants/colors.dart';
import '../../core/constants/images.dart';
import '../widgets/buttons.dart';
import '../widgets/form.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  //controllers
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
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
              const Text('Sign up', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              const SizedBox(height: 40),
              CustomFormField(controller: emailController, hintText: 'Email'),
              const SizedBox(height: 2),
              CustomFormField(controller: passwordController, hintText: 'Password'),
              const SizedBox(height: 2),
              CustomFormField(controller: phoneController, hintText: 'Phone'),
              const SizedBox(height: 2),
              const CustomButton(label: 'Sign in'),
              const SizedBox(height: 20),
              const CustomTextButton(label: 'Forget password'),
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
                  const Text('Already have an account?', style: TextStyle(fontSize: 16)),
                  CustomTextButton(
                    label: 'Sign in',
                    fun: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const SigninScreen()));
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
