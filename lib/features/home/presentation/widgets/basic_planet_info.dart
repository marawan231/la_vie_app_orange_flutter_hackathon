import 'package:flutter/material.dart';
import '../../../../core/resources/values_manager.dart';

class BasicPlanetInfo extends StatelessWidget {
  const BasicPlanetInfo({Key? key}) : super(key: key);

  Widget _buildBasicPlanetInfoText(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildTitleText(context),
        const SizedBox(
          height: AppSize.s4,
        ),
        _buildPriceText(context),
      ],
    );
  }

  Widget _buildPriceText(context) {
    return Text(
      '50 EGP',
      style: Theme.of(context).textTheme.labelMedium,
    );
  }

  Widget _buildTitleText(BuildContext context) {
    return Text(
      "Crushing Planet",
      style: Theme.of(context).textTheme.labelLarge,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: AppPadding.p16),
      height: AppSize.s85,
      width: AppSize.s200,
      child: Padding(
        padding: const EdgeInsets.only(
          left: AppPadding.p25,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildBasicPlanetInfoText(context),
          ],
        ),
      ),
    );
  }
}
