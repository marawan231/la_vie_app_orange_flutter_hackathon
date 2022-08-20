import 'package:flutter/material.dart';

import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/font_manager.dart';
import '../../../../core/resources/strings_manager.dart';
import '../../../../core/resources/values_manager.dart';

class ForumsCategoryContainer extends StatelessWidget {
  const ForumsCategoryContainer({Key? key, required this.onTap})
      : super(key: key);
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: MediaQuery.of(context).size.height * .04,
        width: MediaQuery.of(context).size.width * .35,
        decoration: BoxDecoration(
          color: ColorManager.transparent,
          border: Border.all(
            color: ColorManager.darkWhite,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(AppSize.s5),
          ),
        ),
        child: Center(
          child: Text(
            AppStrings.allForums,
            style: TextStyle(
              color: ColorManager.grey2,
              fontSize: AppSize.s12,
              fontFamily: FontConstants.robotoFontFamily,
              fontWeight: FontWeightManager.semiBold,
            ),
          ),
        ),
      ),
    );
  }
}
