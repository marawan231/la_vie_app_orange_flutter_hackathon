import 'package:flutter/material.dart';

import '../../features/auth/presentation/widgets/text_field_container.dart';

import '../resources/color_manager.dart';
import '../resources/font_manager.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, required this.text, required this.onPressed})
      : super(key: key);
  final String text;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            fontSize: 14,
            color: ColorManager.white,
            fontFamily: FontConstants.robotoFontFamily,
          ),
        ),
      ),
    );
  }
}
