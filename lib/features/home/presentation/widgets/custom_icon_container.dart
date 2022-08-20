import 'package:flutter/material.dart';

import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/values_manager.dart';

class CustomIconContainer extends StatelessWidget {
  const CustomIconContainer({
    Key? key,
    required this.icon,
    required this.onTap,
    this.containerColor = const Color(0xff1ABC00),
    this.height = 46,
    this.width = 51,
    this.iconSize = 25,
  }) : super(key: key);

  final IconData icon;
  final void Function()? onTap;
  final Color containerColor;
  final double height;
  final double width;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: containerColor,
          border: Border.all(
            color: ColorManager.transparent,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(AppSize.s10),
          ),
        ),
        child: Icon(
          icon,
          color: ColorManager.white,
          size: iconSize,
        ),
      ),
    );
  }
}
