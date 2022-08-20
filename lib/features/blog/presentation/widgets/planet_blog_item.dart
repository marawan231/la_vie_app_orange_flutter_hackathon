import 'package:flutter/material.dart';

import '../../../../core/resources/assets_manager.dart';
import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/style_manager.dart';
import '../../../../core/resources/values_manager.dart';
import '../../../cart/presentation/widgets/custom_card.dart';

class PlanetBlogItem extends StatelessWidget {
  const PlanetBlogItem({Key? key}) : super(key: key);

  Widget _buildBlogItemCard(BuildContext context) {
    return CustomCard(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _buildPlanetInBlogImage(context),
          _buildBlogPlanetInfo(context),
        ],
      ),
    );
  }

  Widget _buildPlanetInBlogImage(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: MediaQuery.of(context).size.width * .02,
      ),
      child: Image.asset(
        ImageAssets.cartPlanet,
      ),
    );
  }

  Widget _buildBlogPlanetInfo(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: MediaQuery.of(context).size.width * .04,
        top: MediaQuery.of(context).size.height * .03,
        bottom: MediaQuery.of(context).size.height * .025,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildBlogCreatedTime(),
          _buildBlogTitle(),
          _buildBlogDetails(context),
        ],
      ),
    );
  }

  Widget _buildBlogTitle() {
    return Text(
      '5 Tips to treat plants',
      style: getSemiBoldStyle(
        color: ColorManager.black,
        fontSize: AppSize.s16,
      ),
    );
  }

  Widget _buildBlogDetails(BuildContext context) {
    return Column(
      children: [
        Text(
          'leaf, in botany, any usually',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        Text(
          'leaf, in botany, any usually',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }

  _buildBlogCreatedTime() {
    return Text(
      '2 days ago',
      style: getMediumStyle(
        color: ColorManager.primary,
        fontSize: AppSize.s14,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildBlogItemCard(context);
  }
}
