import 'package:flutter/material.dart';

import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/values_manager.dart';



class QrResultContainer extends StatelessWidget {
  const QrResultContainer({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(
          right: AppPadding.p32,
          left: AppPadding.p32,
          bottom: AppPadding.p16,
          top: AppPadding.p16,
        ),
        decoration: BoxDecoration(
          color: ColorManager.unvisibleGrey,
          borderRadius: const BorderRadius.all(
            Radius.circular(AppSize.s10),
          ),
        ),
        child: child);
  }
}
