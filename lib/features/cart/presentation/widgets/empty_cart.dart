import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_svg/svg.dart';

import '../../../../core/resources/assets_manager.dart';
import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/style_manager.dart';
import '../../../../core/resources/values_manager.dart';


class EmptyCart extends StatelessWidget {
  const EmptyCart({Key? key, required this.text}) : super(key: key);
  final String text;

  Widget _buildEmptyCartBody() {
    return Container(
      padding: const EdgeInsets.only(
        bottom: AppPadding.p170,
        left: AppPadding.p24,
        right: AppPadding.p24,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildEmptyImage(),
          const SizedBox(
            height: AppSize.s40,
          ),
          _buildEmptyText(),
          const SizedBox(
            height: AppSize.s12,
          ),
          _buildEmptySubText(),
        ],
      ),
    );
  }

  Widget _buildEmptyImage() {
    return SvgPicture.asset(
      ImageAssets.emptyCart,
      height: AppSize.s200,
    );
  }

  Widget _buildEmptyText() {
    return Text(
      text,
      style: getBoldStyle(
        color: ColorManager.black,
        fontSize: AppSize.s20,
      ),
    );
  }

  Widget _buildEmptySubText() {
    return Text(
      textAlign: TextAlign.center,
      'Sorry, the keyword you entered cannot be found, please check again or search with another keyword.',
      style: getRegularStyle(
        color: ColorManager.grey5,
        fontSize: AppSize.s16,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildEmptyCartBody();
  }
}
/*
AppBar(
    backgroundColor: ColorManager.transparent,
    title: Text(
      title,
      style: Theme.of(context).appBarTheme.titleTextStyle.copyWith(
        fontSize:25,
      ),
    ),
  );
 */