import 'package:flutter/material.dart';

import '../../core/constants/colors.dart';

class CustomButton extends StatefulWidget {
  final VoidCallback? fun;
  final String? label;

  const CustomButton({this.fun, required this.label, super.key});

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 43,
        width: double.infinity,
        decoration: const BoxDecoration(color: AppColors.primary, borderRadius: BorderRadius.all(Radius.circular(24))),
        child: ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(AppColors.primary), elevation: MaterialStateProperty.all<double>(0)),
          child: Text(
            widget.label ?? "",
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white),
          ),
        ));
  }
}

//buttons for elsewhere except the signup and signin page
class CustomButtonTwo extends StatefulWidget {
  const CustomButtonTwo({super.key});

  @override
  State<CustomButtonTwo> createState() => _CustomButtonTwoState();
}

class _CustomButtonTwoState extends State<CustomButtonTwo> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

///text button
class CustomTextButton extends StatefulWidget {
  final VoidCallback? fun;
  final String? label;

  const CustomTextButton({this.fun, required this.label, super.key});

  @override
  State<CustomTextButton> createState() => _CustomTextButtonState();
}

class _CustomTextButtonState extends State<CustomTextButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        child: Text(
          widget.label ?? 'Click me',
          style: const TextStyle(fontSize: 16, color: AppColors.primary),
        ));
  }
}
