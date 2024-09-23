import 'package:flutter/material.dart';

import '../../core/constants/colors.dart';

class CustomFormField extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback? fun;
  final String? hintText;

  const CustomFormField({required this.controller, this.fun, required this.hintText, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 4, bottom: 30),
      child: TextFormField(
          controller: controller,
          onTap: () {},
          decoration: InputDecoration(
            // label: Text('dsih' ?? ''),
            hintText: hintText,
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey), // Bottom border when not focused
            ),
            focusedBorder: const OutlineInputBorder(borderSide: BorderSide(width: 1, color: AppColors.primary)),
            border: const OutlineInputBorder(
              borderSide: BorderSide(
                width: 1,
                color: Colors.grey,
              ),
            ),
          )),
    );
  }
}
