import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController textEditingController;
  final String labelText;

  const MyTextField({
    super.key,
    required this.textEditingController,
    required this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController, // ✅ Ini penting agar bisa di-clear
      decoration: InputDecoration(
        labelText: labelText, // ✅ Lebih baik pakai labelText langsung
        border: OutlineInputBorder(),
      ),
    );
  }
}
