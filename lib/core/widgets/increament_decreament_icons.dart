import 'package:flutter/material.dart';

import '../resources/color_manager.dart';
import '../resources/values_manager.dart';

class IncreamentAndDecreameantIcons extends StatelessWidget {
  const IncreamentAndDecreameantIcons({
    Key? key,
    required this.icon,
    required this.color,
    this.radius,
    required this.onTap,
  }) : super(key: key);

  final IconData icon;
  final Color color;
  final double? radius;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .025,
      width: MediaQuery.of(context).size.width * .05,
      decoration: BoxDecoration(
        color: ColorManager.disableGrey,
        border: Border.all(
          color: ColorManager.grey1,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(radius ?? 0),
        ),
      ),
      child: GestureDetector(
        onTap: onTap,
        child: Icon(
          icon,
          color: color,
          size: AppSize.s16,
        ),
      ),
    );
  }
}
