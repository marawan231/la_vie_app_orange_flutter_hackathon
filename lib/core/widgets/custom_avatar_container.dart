import 'package:flutter/material.dart';

import '../resources/values_manager.dart';

class CustomAvatarContainer extends StatelessWidget {
  const CustomAvatarContainer(
      {Key? key, required this.image, this.radius = AppSize.s24})
      : super(key: key);

  final String image;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: CircleAvatar(
        radius: radius,
        child: Image.asset(
          image,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
