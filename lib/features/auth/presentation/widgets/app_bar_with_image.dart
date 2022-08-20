import 'package:flutter/material.dart';
import '../../../../core/resources/assets_manager.dart';
import '../../../../core/resources/values_manager.dart';
import '../../../../core/widgets/name_and_logo.dart';

class AppBarWithImage extends StatelessWidget {
  const AppBarWithImage({Key? key}) : super(key: key);

  Widget _buildAppBarTitle(BuildContext context) {
    return Positioned(
      bottom: AppSize.s64,
      child: Center(
        child: NameWithLogo(
          textStyle: Theme.of(context).textTheme.headlineLarge,
          heightOfLogo: AppSize.s12,
        ),
      ),
    );
  }

  Widget _buildAppBarLeaf() {
    return Align(
      alignment: Alignment.topRight,
      child: Image.asset(ImageAssets.leaf, scale: 1.3),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        _buildAppBarLeaf(),
        _buildAppBarTitle(context),
      ],
    );
  }
}
