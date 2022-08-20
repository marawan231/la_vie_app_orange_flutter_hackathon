import 'package:flutter/material.dart';
import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/strings_manager.dart';
import '../../../../core/resources/values_manager.dart';
import '../../../../core/widgets/custom_button.dart';
import '../widgets/planet_text_info_item.dart';
import '../widgets/weather_info_item.dart';

class ScannedItemDetails extends StatelessWidget {
  const ScannedItemDetails({Key? key}) : super(key: key);

  Widget _buildScannedItemDetailsBody(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildPlanetWeatherConditionsContainer(context),
        _buildPlanetDetailsContainer(context),
      ],
    );
  }

  Widget _buildPlanetWeatherConditionsContainer(BuildContext context) {
    return Expanded(
      child: Container(
        color: ColorManager.grey,
        width: double.infinity,
        child: _buildPlanetWeatherConditionBody(context),
      ),
    );
  }

  Widget _buildPlanetDetailsContainer(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: _buildPlanetDetailsBody(context),
      ),
    );
  }

  Widget _buildPlanetDetailsBody(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: AppPadding.p18,
        right: AppPadding.p18,
        top: AppPadding.p32,
      ),
      child: Column(
        children: [
          _buildPlanetDetailsText(),
          _buildGoToBlogButton(),
        ],
      ),
    );
  }

  Widget _buildPlanetDetailsText() {
    return Expanded(
      flex: 4,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            PlanetInfoText(
              title: 'SNAKE PLANT (SANSEVIERIA)',
              subtitle:
                  'Native to southern Africa, snake plants are well adapted to conditions similar to those in southern regions of the United States. Because of this, they may be grown outdoors for part of all of the year in USDA zones 8 and warmer',
            ),
            SizedBox(
              height: AppSize.s16,
            ),
            PlanetInfoText(
                title: 'Common Snake Plant Diseases',
                subtitle:
                    'A widespread problem with snake plants is root rot. This results from over-watering the soil of the plant and is most common in the colder months of the year. When room rot occurs, the plant roots can die due to a lack of oxygen and an overgrowth of fungus within the soil. If the snake plant\'s soil is soggy, certain microorganisms such as Rhizoctonia and Pythium can begin to populate and multiply, spreadiلخ فخ شقفهؤشمng disease throughout th'),
          ],
        ),
      ),
    );
  }

  Widget _buildGoToBlogButton() {
    return Expanded(
      child: Column(
        children: [
          CustomButton(
            text: AppStrings.goToBlog,
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  _buildPlanetWeatherConditionBody(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: AppPadding.p43,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          WeatherInfoItem(),
          WeatherInfoItem(),
          WeatherInfoItem(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorManager.transparent,
      ),
      backgroundColor: ColorManager.grey,
      body: _buildScannedItemDetailsBody(context),
    );
  }
}
