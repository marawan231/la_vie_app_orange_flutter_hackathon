import 'package:flutter/material.dart';

import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/values_manager.dart';


class CustomCard extends StatelessWidget {
  const CustomCard({Key? key, required this.child}) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppPadding.p8),
      child: Container(
        height: AppSize.s160,
        padding: const EdgeInsets.symmetric(horizontal: AppPadding.p20),
        child: Card(
          shadowColor: ColorManager.white,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(AppSize.s15),
            ),
          ),
          color: ColorManager.white,
          child: child,
        ),
      ),
    );
  }
}
