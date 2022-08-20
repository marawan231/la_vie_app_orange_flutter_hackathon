import 'package:flutter/material.dart';

import '../../../../core/resources/assets_manager.dart';
import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/style_manager.dart';
import '../../../../core/resources/values_manager.dart';
import '../../../../core/widgets/number_of_planets.dart';
import 'custom_card.dart';

class PlanetCartItem extends StatelessWidget {
  const PlanetCartItem({Key? key}) : super(key: key);

  Widget _buildCartItemCard() {
    return CustomCard(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildPlanetInCartImage(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              _buildPlanetInfo(),
              _buildDeleteIconButton(),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildPlanetInCartImage() {
    return Expanded(
      child: Image.asset(
        ImageAssets.cartPlanet,
      ),
    );
  }

  Widget _buildPlanetInfo() {
    return Container(
      padding: const EdgeInsets.only(
        left: AppPadding.p14,
        top: AppPadding.p12,
        bottom: AppPadding.p12,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildPlanetTitle(),
          _buildPlanetPrice(),
          _buildNumberOfPlanets(),
        ],
      ),
    );
  }

  Widget _buildPlanetTitle() {
    return Text(
      'Cactus plant',
      style: getSemiBoldStyle(
        color: ColorManager.black,
        fontSize: AppSize.s16,
      ),
    );
  }

  Widget _buildNumberOfPlanets() {
    return Container(
        height: AppSize.s35,
        width: AppSize.s64,
        decoration: BoxDecoration(
          color: ColorManager.grey1,
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: NumberOfPlanets(
          iconsColor: ColorManager.primary,
          radius: AppSize.s10,
          spaceBetweenButtons: false,
          plusButtonOnPressed: () {
          },
          minusButtonOnPressed: () {
          },
        ));
  }

  _buildPlanetPrice() {
    return Text(
      '200 EGP',
      style: getMediumStyle(
        color: ColorManager.primary,
        fontSize: AppSize.s14,
      ),
    );
  }

  _buildDeleteIconButton() {
    return Container(
      padding: const EdgeInsets.only(
        bottom: AppPadding.p28,
        left: AppPadding.p43,
        right: AppPadding.p4,
      ),
      child: GestureDetector(
        onTap: () {},
        child: Icon(
          Icons.delete,
          color: ColorManager.primary,
          size: AppSize.s24,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildCartItemCard();
  }
}
