import 'package:flutter/material.dart';

import '../../../../core/resources/strings_manager.dart';
import '../../../../core/resources/style_manager.dart';


class TotalPrice extends StatelessWidget {
  const TotalPrice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          AppStrings.total,
          style: getTotalStringStyle(),
        ),
        RichText(
            text: TextSpan(children: [
          TextSpan(
            text: '180,000',
            style: getTotalPrice(),
          ),
          TextSpan(
            text: ' Egp',
            style: getCurrencyOfTotalPriceStyle(),
          ),
        ])),
      ],
    );
  }
}
