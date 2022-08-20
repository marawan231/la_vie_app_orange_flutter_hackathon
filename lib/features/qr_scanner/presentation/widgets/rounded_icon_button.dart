import 'package:flutter/material.dart';

import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/values_manager.dart';


class RoundedIconButton extends StatelessWidget {
  const RoundedIconButton({Key? key, required this.onTap, required this.icon})
      : super(key: key);
  final void Function()? onTap;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: CircleAvatar(
        radius: AppSize.s20,
        child: Icon(
          icon,
          color: ColorManager.white,
          size: AppSize.s18,
        ),
      ),
    );
  }
}
