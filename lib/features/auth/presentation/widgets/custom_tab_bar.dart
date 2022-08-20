import 'package:flutter/material.dart';
import 'package:la_vie_app_orange_hackathone/core/resources/font_manager.dart';

import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/strings_manager.dart';
import '../../../../core/resources/values_manager.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicatorColor: ColorManager.primary,
      labelColor: ColorManager.primary,
      indicatorWeight: AppSize.s3,
      unselectedLabelColor: ColorManager.lightGrey,
      indicatorSize: TabBarIndicatorSize.label,
      labelStyle: Theme.of(context).textTheme.titleMedium!.copyWith(
            fontWeight: FontWeightManager.semiBold,
          ),
      unselectedLabelStyle: Theme.of(context).textTheme.titleMedium,
      tabs: const [
        Tab(
          text: AppStrings.signUp,
        ),
        Tab(
          text: AppStrings.login,
        ),
      ],
    );
  }
}
