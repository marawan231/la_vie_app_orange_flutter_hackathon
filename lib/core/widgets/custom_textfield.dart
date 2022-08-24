import 'package:flutter/material.dart';

import '../../features/auth/presentation/widgets/text_field_container.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    this.hintText,
    this.prefixIcon,
    this.controller,
    required this.text,
    this.width = 0.92,
    this.height = 0.05,
    this.suffixIcon,
    this.keyboardType = TextInputType.name,
    this.validator,
    this.obscureText = false,
  }) : super(key: key);
  final double height;
  final double width;
  final String? hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextEditingController? controller;
  final String text;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;
  final bool obscureText;

  Widget _buildTextAboveTextField(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.titleSmall,
    );
  }

  Widget _buildTextField(BuildContext context) {
    return TextFieldContainer(
      width: width,
      height: height,
      child: TextFormField(
        // textAlign: TextAlign.left,
        obscureText: obscureText,

        keyboardType: keyboardType,
        validator: validator,

        cursorColor: Theme.of(context).primaryColor,

        style: Theme.of(context).textTheme.bodySmall!.copyWith(
              fontSize: 14,
            ),
        controller: controller,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildTextAboveTextField(context),
        SizedBox(
          height: MediaQuery.of(context).size.height * .01,
        ),
        _buildTextField(context),
      ],
    );
  }
}
