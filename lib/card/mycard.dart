import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final TextEditingController controller;
  final bool obscureText;

  const MyCard({super.key, required this.controller, this.obscureText = false});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color.fromRGBO(0, 53, 142, 1)),
          borderRadius: BorderRadius.circular(10.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color.fromRGBO(0, 53, 142, 1)),
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      style: const TextStyle(
        color: Colors.black,
      ),
    );
  }
}
