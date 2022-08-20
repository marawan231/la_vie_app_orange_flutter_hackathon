import 'package:flutter/material.dart';

import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/values_manager.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({Key? key, required this.text}) : super(key: key);
  final String text;

  Widget _buildDividerLine(BuildContext context) {
    return Expanded(
      child: Divider(
        endIndent: MediaQuery.of(context).size.width * .01,
        color: ColorManager.grey2,
        thickness: 1,
      ),
    );
  }

  Widget _buildDividerText(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.bodySmall!.copyWith(
            fontSize: AppSize.s12,
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _buildDividerLine(context),
        _buildDividerText(context),
        _buildDividerLine(context),
      ],
    );
  }
}
