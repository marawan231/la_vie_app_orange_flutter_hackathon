import 'package:flutter/material.dart';

import '../../../../core/resources/values_manager.dart';

class SocialAuthButton extends StatelessWidget {
  const SocialAuthButton({Key? key, required this.image,required this.onTap}) : super(key: key);
  final String image;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return   SizedBox(
          height: AppSize.s28,
          child: InkWell(
            onTap: onTap,
            child: Image.asset(image, fit: BoxFit.cover),
          ),
        );
  }
}