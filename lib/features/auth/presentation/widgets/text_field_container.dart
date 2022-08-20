import 'package:flutter/material.dart';

class TextFieldContainer extends StatelessWidget {
  final Widget? child;
  final double width;
  final double height;

  const TextFieldContainer({
    Key? key,
    this.child,
    this.width = 0.9,
    this.height = .06,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * width,
      height: size.height * height,
      child: child,
    );
  }
}
