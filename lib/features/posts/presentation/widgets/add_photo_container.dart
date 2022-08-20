import 'package:flutter/material.dart';
import '../../../../core/resources/values_manager.dart';

import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/style_manager.dart';

class AddPhotoContainer extends StatelessWidget {
  const AddPhotoContainer(
      {Key? key, required this.icon, required this.text, this.height = .16})
      : super(key: key);
  final IconData icon;
  final String text;
  final double height;

  @override
  Widget build(BuildContext context) {
    _buildContainerIcon() {
      return Icon(
        icon,
        color: ColorManager.primary,
      );
    }

    Widget _buildContainerText() {
      return Text(
        text,
        style: getAddPhotoTextStyle(),
      );
    }

    return Container(
      height: MediaQuery.of(context).size.height * height,
      width: MediaQuery.of(context).size.height * height,
      decoration: BoxDecoration(
        border: Border.all(
          color: ColorManager.primary,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(AppSize.s10),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildContainerIcon(),
          SizedBox(
            height: MediaQuery.of(context).size.height * .01,
          ),
          _buildContainerText(),
        ],
      ),
    );
  }
}
