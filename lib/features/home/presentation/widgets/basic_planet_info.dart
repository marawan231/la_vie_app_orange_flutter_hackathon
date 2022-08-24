import 'package:flutter/material.dart';
import '../../../../core/resources/values_manager.dart';

class BasicPlanetInfo extends StatelessWidget {
  const BasicPlanetInfo(
      {Key? key, required this.nameOfThePlanet, required this.plantPrice})
      : super(key: key);
  final String nameOfThePlanet;
  final int plantPrice;

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
      "$plantPrice",
      style: Theme.of(context).textTheme.labelMedium,
    );
  }

  Widget _buildTitleText(BuildContext context) {
    return FittedBox(
      child: Text(
        overflow: TextOverflow.ellipsis,
        nameOfThePlanet,
        style: Theme.of(context).textTheme.labelLarge,
      ),
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
