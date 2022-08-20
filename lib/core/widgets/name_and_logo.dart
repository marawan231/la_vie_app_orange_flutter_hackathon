import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_svg/svg.dart';

import '../resources/assets_manager.dart';
import '../resources/strings_manager.dart';
import '../resources/values_manager.dart';


class NameWithLogo extends StatelessWidget {
  const NameWithLogo({
    Key? key,
    this.textStyle,
    this.heightOfLogo,
  }) : super(key: key);
  final TextStyle? textStyle;
  final double? heightOfLogo;

  Widget _buildText(BuildContext context) {
    return Text(
      AppStrings.laVie,
      style: textStyle,
    );
  }

  Widget _buildLogo(BuildContext context) {
    return Positioned(
      top: AppSize.s18,
      child: SvgPicture.asset(
        height: heightOfLogo,
        ImageAssets.splashLogo,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        _buildText(context),
        _buildLogo(context),
      ],
    );
  }
}
