// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:la_vie_app_orange_hackathone/core/resources/assets_manager.dart';
import 'package:la_vie_app_orange_hackathone/core/resources/values_manager.dart';

import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/style_manager.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({Key? key, this.image, this.name}) : super(key: key);
  final String? image;
  final String? name;

  Widget _buildProfilePic(BuildContext context) {
    return CircleAvatar(
      radius: MediaQuery.of(context).size.width * .17,
      child: ClipOval(
        child: Image.asset(
          ImageAssets.myPhoto,
          width: AppSize.s140,
          height: AppSize.s140,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  _buildProfileName() {
    return Text(
      name!,
      style: getBoldStyle(
        color: ColorManager.white,
        fontSize: AppSize.s24,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: AppPadding.p64),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildProfilePic(context),
          const SizedBox(
            height: AppSize.s4,
          ),
          _buildProfileName(),
        ],
      ),
    );
  }
}
