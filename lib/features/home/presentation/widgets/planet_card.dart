import 'package:flutter/material.dart';
import 'package:la_vie_app_orange_hackathone/core/resources/constants.dart';
import 'package:la_vie_app_orange_hackathone/features/home/presentation/widgets/custom_image.dart';

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
  final int? price;

  final void Function() ontap;

  const PlanetCard({
    Key? key,
    required this.image,
    this.title,
    this.price,
    required this.ontap,
  }) : super(key: key);

  Widget _buildBackGroundContainer(BuildContext context) {
    return Positioned(
      bottom: AppSize.s1,
      left: AppSize.s4,
      right: AppPadding.p2,
      child: BackgroundContainer(),
    );
  }

  Widget _buildImage(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * .01,
      left: MediaQuery.of(context).size.height * .005,
      child: Container(
        //  decoration: BoxDecoration(color: ColorManager.error),
        width: MediaQuery.of(context).size.height * .15,
        height: MediaQuery.of(context).size.height * .2,
        child: Image.network(
          '$imageBaseUrl$image',
          // height: MediaQuery.of(context).size.height * .1,
          width: MediaQuery.of(context).size.width * .26,
          fit: BoxFit.contain,
        ),
      ),
    );
  }

  Widget _buildNumberOfPlanetsUserWant(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * .1,
      right: MediaQuery.of(context).size.height * .01,
      child: NumberOfPlanets(
        plusButtonOnPressed: () {},
        minusButtonOnPressed: () {},
      ),
    );
  }

  Widget _buildPlanetBasicInfo(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * .215,
      child: BasicPlanetInfo(
        nameOfThePlanet: title!,
        plantPrice: price!,
      ),
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
            _buildBackGroundContainer(context),
            _buildImage(context),
            _buildNumberOfPlanetsUserWant(context),
            _buildPlanetBasicInfo(context),
            _buildAddPlanetToCartButton(context),
          ],
        ),
      ),
    );
  }
}
