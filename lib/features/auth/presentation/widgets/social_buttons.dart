import 'package:flutter/material.dart';

import '../../../../core/resources/assets_manager.dart';
import '../../../../core/resources/values_manager.dart';
import 'social_auth_button.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons(
      {Key? key, required this.googleOnTap, required this.facebookOnTap})
      : super(key: key);
  final void Function()? googleOnTap;
  final void Function()? facebookOnTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SocialAuthButton(image: ImageAssets.googleImage, onTap: googleOnTap),
        const SizedBox(
          width: AppSize.s16,
        ),
        SocialAuthButton(
            image: ImageAssets.facebookImage, onTap: facebookOnTap),
      ],
    );
  }
}
