
// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:la_vie_app_orange_hackathone/core/resources/color_manager.dart';
import 'package:la_vie_app_orange_hackathone/core/resources/style_manager.dart';
import 'package:la_vie_app_orange_hackathone/core/resources/values_manager.dart';
import 'package:la_vie_app_orange_hackathone/core/widgets/custom_avatar_container.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/resources/assets_manager.dart';

class PostItem extends StatelessWidget {
  const PostItem({Key? key}) : super(key: key);

  Widget _buildPostContainer(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .35,
      decoration: BoxDecoration(
        border: Border.all(
          color: ColorManager.darkWhite,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildUserInformation(context),
          _buildPostInformation(context),
          _buildPostPhoto(),
        ],
      ),
    );
  }

  Widget _buildUserInformation(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(
        MediaQuery.of(context).size.height * .02,
      ),
      child: Row(
        children: [
          _buildUserAvatar(),
          SizedBox(width: MediaQuery.of(context).size.height * .02),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildUserName(),
              SizedBox(height: MediaQuery.of(context).size.height * .005),
              _buildPostCreatedDate(),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildUserAvatar() {
    return const CustomAvatarContainer(
      image: ImageAssets.myPhoto,
      radius: AppSize.s28,
    );
  }

  Widget _buildUserName() {
    return Text(
      'Marawan Aly',
      style: getBoldStyle(
        color: ColorManager.black,
        fontSize: AppSize.s14,
      ),
    );
  }

  Widget _buildPostCreatedDate() {
    return Text(
      'a month ago',
      style: getRegularStyle(
        color: ColorManager.grey2,
        fontSize: AppSize.s10,
      ),
    );
  }

  Widget _buildPostInformation(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildPostTitle(context),
        _buildPostBody(context),
      ],
    );
  }

  _buildPostTitle(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: MediaQuery.of(context).size.height * .01,
        bottom: MediaQuery.of(context).size.height * .01,
      ),
      child: Text(
        'How To Treat Planets',
        style: getBoldStyle(
          color: ColorManager.primary,
          fontSize: AppSize.s15,
        ),
      ),
    );
  }

  Widget _buildPostBody(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: MediaQuery.of(context).size.height * .015,
        bottom: MediaQuery.of(context).size.height * .01,
      ),
      child: Text(
        'It is a long established fact that a reader will be distracted',
        style: getRegularStyle(
          color: ColorManager.grey8,
          fontSize: 11,
        ),
      ),
    );
  }

  Widget _buildPostPhoto() {
    return Expanded(
      child: SizedBox(
        width: double.infinity,
        child: Image.asset(
          ImageAssets.postPhoto,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  _buildLikeButton(BuildContext context) {
    return Row(
      children: [
        _buildLikeIcon(context),
        _buildLikeText(),
      ],
    );
  }

  _buildLikeIcon(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: SvgPicture.asset(
        ImageAssets.like,
        height: MediaQuery.of(context).size.height * .025,
        width: MediaQuery.of(context).size.height * .025,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _buildLikeText() {
    return Text(
      ' 0 likes',
      style: getMediumStyle(
        color: ColorManager.grey2,
        fontSize: 11,
      ),
    );
  }

  _buildReplies() {
    return Text(
      ' 2 Replies',
      style: getMediumStyle(
        color: ColorManager.grey2,
        fontSize: 11,
      ),
    );
  }

  Widget _buildBottomPostButtons(context) {
    return Row(
      children: [
        _buildLikeButton(context),
        SizedBox(width: MediaQuery.of(context).size.width * .1),
        _buildReplies(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildPostContainer(context),
        SizedBox(height: MediaQuery.of(context).size.height * .01),
        _buildBottomPostButtons(context),
      ],
    );
  }
}
