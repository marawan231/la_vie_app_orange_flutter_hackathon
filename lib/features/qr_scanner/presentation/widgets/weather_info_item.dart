import 'package:flutter/material.dart';

// ignore: depend_on_referenced_packages
import 'package:flutter_svg/svg.dart';
import 'package:la_vie_app_orange_hackathone/core/resources/values_manager.dart';
import 'package:la_vie_app_orange_hackathone/features/qr_scanner/presentation/widgets/emoji_container.dart';

import '../../../../core/resources/assets_manager.dart';
import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/font_manager.dart';
import '../../../../core/resources/strings_manager.dart';
import '../../../../core/resources/style_manager.dart';

class WeatherInfoItem extends StatelessWidget {
  const WeatherInfoItem({Key? key}) : super(key: key);

  Widget _buildConditionEmojiContainer() {
    return EmojiContainer(
      child: _buildEmoji(),
    );
  }

  Widget _buildEmoji() {
    return SvgPicture.asset(
      ImageAssets.water,
      color: ColorManager.unvisibleGrey,
      fit: BoxFit.scaleDown,
    );
  }

  Widget _buildConditionDetails() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildConditionPercentage(),
        _buildConditionText(),
      ],
    );
  }

  Widget _buildConditionPercentage() {
    return Text(
      '78${AppStrings.degreeSign}c',
      style: getMediumStyle(color: ColorManager.white, fontSize: FontSize.s14),
    );
  }

  Widget _buildConditionText() {
    return Text(
      'sun light',
      style: getRegularStyle(color: ColorManager.white),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppPadding.p8),
      child: Row(
        children: [
          _buildConditionEmojiContainer(),
          const SizedBox(
            width: AppSize.s25,
          ),
          _buildConditionDetails(),
        ],
      ),
    );
  }
}
