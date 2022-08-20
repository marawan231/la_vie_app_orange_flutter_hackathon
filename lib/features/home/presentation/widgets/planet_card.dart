import 'package:flutter/material.dart';

import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/strings_manager.dart';
import '../../../../core/resources/values_manager.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../../core/widgets/number_of_planets.dart';
import 'background_container.dart';
import 'basic_planet_info.dart';

class PlanetCard extends StatelessWidget {
  final String image;
  final String? title;
  final String? price;

  final void Function() ontap;

  const PlanetCard({
    Key? key,
    required this.image,
    this.title,
    this.price,
    required this.ontap,
  }) : super(key: key);

  Widget _buildBackGroundContainer() {
    return const Positioned(
      bottom: AppSize.s4,
      left: AppSize.s4,
      right: AppPadding.p2,
      child: BackgroundContainer(),
    );
  }

  Widget _buildImage() {
    return Image.asset(
      image,
    );
  }

  Widget _buildNumberOfPlanetsUserWant(BuildContext context) {
    return Positioned(
      top: AppSize.s85,
      right: AppSize.s10,
      child: NumberOfPlanets(
        plusButtonOnPressed: () {},
        minusButtonOnPressed: () {},
      ),
    );
  }

  Widget _buildPlanetBasicInfo(BuildContext context) {
    return const Positioned(
      top: AppSize.s175,
      child: BasicPlanetInfo(),
    );
  }

  Widget _buildAddPlanetToCartButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: AppPadding.p12,
        left: AppPadding.p20,
        right: AppPadding.p20,
      ),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: SizedBox(
            height: AppSize.s35,
            width: double.infinity,
            child: CustomButton(
              text: AppStrings.addToCart,
              onPressed: () {},
            )),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: AppPadding.p8,
        right: AppPadding.p8,
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSize.s20),
          color: ColorManager.transparent,
        ),
        child: Stack(
          children: [
            _buildBackGroundContainer(),
            _buildImage(),
            _buildNumberOfPlanetsUserWant(context),
            _buildPlanetBasicInfo(context),
            _buildAddPlanetToCartButton(context),
          ],
        ),
      ),
    );
  }
}
