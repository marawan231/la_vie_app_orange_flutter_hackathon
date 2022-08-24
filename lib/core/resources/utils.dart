import 'package:flutter/material.dart';

showScaffold({required var text, required context, Color? color}) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        text.toString(),
        textAlign: TextAlign.center,
      ),
      backgroundColor: color,
    ),
  );
}

checkValidation(value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a valid data';
    }
  }