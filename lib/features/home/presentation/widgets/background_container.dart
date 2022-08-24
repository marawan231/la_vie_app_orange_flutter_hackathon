import 'package:flutter/material.dart';

import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/values_manager.dart';

class BackgroundContainer extends StatelessWidget {
  const BackgroundContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .3,
      decoration: BoxDecoration(
        color: ColorManager.white,
        border: Border.all(
          color: ColorManager.transparent,
        ),
        borderRadius: BorderRadius.circular(AppSize.s10),
        boxShadow: [
          BoxShadow(
            blurRadius: AppSize.s1,
            color: ColorManager.grey2,
          ),
        ],
      ),
    );
  }
}
