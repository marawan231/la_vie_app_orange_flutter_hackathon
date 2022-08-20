import 'package:flutter/material.dart';

import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/values_manager.dart';

class EmojiContainer extends StatelessWidget {
  const EmojiContainer({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppSize.s60,
      height: AppSize.s60,
      decoration: BoxDecoration(
        color: ColorManager.darkGrey,
        borderRadius: const BorderRadius.all(
          Radius.circular(AppSize.s10),
        ),
      ),
      child: child,
    );
  }
}
