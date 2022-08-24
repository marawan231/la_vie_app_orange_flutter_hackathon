import 'package:flutter/material.dart';
import 'package:la_vie_app_orange_hackathone/core/resources/color_manager.dart';

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Center(child: CircularProgressIndicator(
      color: ColorManager.primary,
    ));
  }
}
