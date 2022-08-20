import 'package:flutter/material.dart';
import '../../../../core/widgets/custom_avatar_container.dart';

import '../../../../core/resources/assets_manager.dart';
import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/values_manager.dart';

class NotfitcationItem extends StatelessWidget {
  const NotfitcationItem({
    Key? key,
  }) : super(key: key);

  Widget _buildNotificationCard(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(AppMargin.m0),
      elevation: AppSize.s0,
      color: ColorManager.white,
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height * .03,
        ),
        title: _buildNotificationTextContainer(context),
        leading: _buildLeadingAvatar(),
      ),
    );
  }

  Widget _buildNotificationTextContainer(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: AppPadding.p8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildNotificationText(context),
          SizedBox(
            height: MediaQuery.of(context).size.height * .01,
          ),
          _buildNotificationDate(context),
        ],
      ),
    );
  }

  Widget _buildNotificationText(BuildContext context) {
    return Text(
      overflow: TextOverflow.clip,
      'Joy Arnold left 6 comments on Your Post',
      style: Theme.of(context).textTheme.displaySmall,
    );
  }

  Widget _buildNotificationDate(BuildContext context) {
    return Text(
      'Yesterday at 11:42 PM',
      style: Theme.of(context).textTheme.bodySmall!.copyWith(
            fontSize: AppSize.s14,
          ),
    );
  }

  Widget _buildLeadingAvatar() {
    return const Padding(
      padding: EdgeInsets.only(left: AppPadding.p16),
      child: CustomAvatarContainer(
        image: ImageAssets.myPhoto,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: .7, color: ColorManager.grey),
        ),
      ),
      child: _buildNotificationCard(context),
    );
  }
}
