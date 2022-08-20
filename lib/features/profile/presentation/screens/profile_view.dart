

// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:la_vie_app_orange_hackathone/core/resources/assets_manager.dart';
import 'package:la_vie_app_orange_hackathone/core/resources/color_manager.dart';
import 'package:la_vie_app_orange_hackathone/core/resources/style_manager.dart';
import 'package:la_vie_app_orange_hackathone/core/resources/values_manager.dart';
import 'package:la_vie_app_orange_hackathone/features/home/presentation/widgets/custom_icon_container.dart';
import 'package:la_vie_app_orange_hackathone/features/profile/presentation/widgets/blur_background_image.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/resources/strings_manager.dart';
import '../widgets/edit_profile_item.dart';
import '../widgets/profile_info.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  _buildAppBar(BuildContext context) {
    return AppBar(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarBrightness: Brightness.dark,
        statusBarColor: ColorManager.transparent,
      ),
      backgroundColor: ColorManager.transparent,
      actions: _buildProfileAppBarActions(),
    );
  }

  List<Widget> _buildProfileAppBarActions() {
    return [
      const Padding(
        padding: EdgeInsets.only(
          right: AppPadding.p16,
        ),
        child: Icon(
          Icons.more_horiz,
        ),
      )
    ];
  }

  _buildProfileBody() {
    return Stack(children: [
      _buildBackgroundImage(),
      _buildProfileInfoBody(),
    ]);
  }

  Widget _buildBackgroundImage() {
    return const BlurBackgroundImage(image: ImageAssets.myPhoto);
  }

  Widget _buildProfileInfoBody() {
    return Column(
      children: [
        Expanded(
          child: _buildInfo(),
        ),
        Expanded(
          flex: 2,
          child: _buildEditProfileContainer(),
        ),
      ],
    );
  }

  Widget _buildEditProfileContainer() {
    return Container(
      decoration: BoxDecoration(
        color: ColorManager.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: _buildEditProfile(),
    );
  }

  Widget _buildInfo() {
    return const ProfileInfo(
      image: ImageAssets.myPhoto,
      name: 'Marawan Aly',
    );
  }

  Widget _buildEditProfile() {
    return Padding(
      padding: const EdgeInsets.only(
        right: 16.0,
        left: 16,
        bottom: 180,
        top: 16,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          EditProfileItem(
            leading: SvgPicture.asset(ImageAssets.points),
            text: 'You have 30 points',
            trailingIcon: false,
            textColor: ColorManager.black,
            cardColor: ColorManager.grey3,
            elevation: 0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              AppStrings.editProfile,
              style: getMediumStyle(
                color: ColorManager.black,
                fontSize: 20,
              ),
            ),
          ),
          EditProfileItem(
            leading: CustomIconContainer(
              height: AppSize.s30,
              width: AppSize.s30,
              icon: Icons.swap_horiz_outlined,
              containerColor: ColorManager.darkPrimary,
              iconSize: 15,
              onTap: () {},
            ),
            text: 'Change Name',
            trailingIcon: true,
            textColor: ColorManager.black3,
            cardColor: ColorManager.white,
            elevation: 1,
          ),
          EditProfileItem(
            leading: CustomIconContainer(
              height: AppSize.s30,
              width: AppSize.s30,
              icon: Icons.swap_horiz_outlined,
              containerColor: ColorManager.darkPrimary,
              iconSize: 15,
              onTap: () {},
            ),
            text: 'Change Email',
            trailingIcon: true,
            textColor: ColorManager.black3,
            cardColor: ColorManager.white,
            elevation: 1,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: _buildAppBar(context),
      body: _buildProfileBody(),
    );
  }
}
