import 'package:flutter/material.dart';
import '../../../../core/resources/font_manager.dart';
import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/route_manager.dart';
import '../../../../core/resources/style_manager.dart';
import '../../../../core/resources/values_manager.dart';
import 'qr_result_container.dart';
import 'rounded_icon_button.dart';


class QrScanningResult extends StatelessWidget {
  const QrScanningResult({Key? key}) : super(key: key);

  Widget _buildResultContainer(BuildContext context) {
    return QrResultContainer(
      child: Row(
        children: [
          _buildResutltText(),
          const SizedBox(
            width: AppSize.s25,
          ),
          _buildShowResultDetailsButton(context),
        ],
      ),
    );
  }

  _buildResutltText() {
    return Padding(
      padding: const EdgeInsets.only(right: AppPadding.p8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildResultTitle(),
          _buildResultSubTitle(),
        ],
      ),
    );
  }

  _buildResultTitle() {
    return Text(
      'SNAKE PLANT (SANSEVIERIA)',
      style: getSemiBoldStyle(
        color: ColorManager.black,
        fontSize: FontSize.s14,
      ),
    );
  }

  _buildResultSubTitle() {
    return Padding(
      padding: const EdgeInsets.only(
        top: AppPadding.p8,
        left: AppPadding.p8,
      ),
      child: Text(
        'Native to southern Africa',
        style: getRegularStyle(
          color: ColorManager.black,
          fontSize: FontSize.s12,
        ),
      ),
    );
  }

  _buildShowResultDetailsButton(BuildContext context) {
    return RoundedIconButton(
      onTap: () => Navigator.pushNamed(context, Routes.qrDetails),
      icon: Icons.arrow_forward,
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildResultContainer(context);
  }
}
