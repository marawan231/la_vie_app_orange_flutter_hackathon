import 'package:flutter/material.dart';
import '../../../../core/resources/color_manager.dart';

class BlurBackgroundImage extends StatelessWidget {
  const BlurBackgroundImage({Key? key, required this.image}) : super(key: key);
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          colorFilter: ColorFilter.mode(
            ColorManager.backGroundBlack,
            BlendMode.darken,
          ),
          fit: BoxFit.cover,
          image:  AssetImage(image),
        ),
      ),
    );
  }
}
