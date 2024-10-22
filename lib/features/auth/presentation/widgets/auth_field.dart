import 'package:flutter/material.dart';

class AuthField extends StatelessWidget {
  const AuthField({
    super.key,
    required this.hintText,
    required this.controller,
    this.isObscureText = false,
  });

  final String hintText;
  final TextEditingController controller;
  final bool isObscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hintText,
      ),
      onTapOutside: (PointerDownEvent event) {
        FocusScope.of(context).unfocus();
      },
      validator: (value) {
        if (value!.isEmpty) {
          return '$hintText must not be empty';
        }
        return null;
      },
      obscureText: isObscureText,
    );
  }
}
