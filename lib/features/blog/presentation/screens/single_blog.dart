import 'package:flutter/material.dart';
import '../../../../core/resources/assets_manager.dart';
import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/style_manager.dart';

import '../../../../core/resources/values_manager.dart';

class SingleBlogView extends StatelessWidget {
  const SingleBlogView({Key? key}) : super(key: key);

  _buildBlogImage() {
    return Expanded(
      child: SizedBox(
        width: double.infinity,
        child: Image.asset(
          ImageAssets.cartPlanet,
          fit: BoxFit.cover,
//fit: BoxFit.cover,
        ),
      ),
    );
  }

  _buildBlogDetails(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Padding(
        padding: EdgeInsets.only(
          left: MediaQuery.of(context).size.width * .05,
          right: MediaQuery.of(context).size.height * .05,
          top: MediaQuery.of(context).size.height * .03,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildBlogTitle(),
            Padding(
              padding: EdgeInsets.only(
                left: 4.0,
                top: MediaQuery.of(context).size.height * .01,
              ),
              child: Column(
                children: [
                  _buildBlogText(context),
                  _buildBlogText(context),
                  _buildBlogText(context),
                  _buildBlogText(context),
                  _buildBlogText(context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBlogTitle() {
    return Text('5 Simple Tips to treat plants',
        style: getSemiBoldStyle(
          color: ColorManager.black,
          fontSize: 23,
        ));
  }

  Widget _buildBlogText(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).size.height * .02),
      child: Text(
        'leaf, in botany, any usually flattened green outgrowth from the stem of  ',
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              fontSize: AppSize.s16,
            ),
      ),
    );
    // return Column(
    //   children: [
    //     Text(
    //       'leaf, in botany, any usually',
    //       style: getMediumStyle(
    //         color: ColorManager.grey2,
    //         fontSize: AppSize.s14,
    //       ),
    //     ),
    //     SizedBox(
    //       height: MediaQuery.of(context).size.height * .008,
    //     ),
    //     Text(
    //       'leaf, in botany, any usually',
    //       style: getMediumStyle(
    //         color: ColorManager.grey2,
    //         fontSize: AppSize.s14,
    //       ),
    //     ),
    //   ],
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _buildBlogImage(),
          _buildBlogDetails(context),
        ],
      ),
    );
  }
}
