import 'package:flutter/material.dart';

// ignore: depend_on_referenced_packages
import '../../../../core/resources/assets_manager.dart';
import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/constants.dart';
import '../../../../core/resources/values_manager.dart';
import '../widgets/app_bar_with_image.dart';
import '../widgets/custom_tab_bar.dart';
import 'login_view.dart';
import 'register_view.dart';

class AuthView extends StatelessWidget {
  const AuthView({Key? key}) : super(key: key);

  Widget _buildTabBar() {
    return const TabBarView(
      children: [
        RegisterView(),
        LoginView(),
      ],
    );
  }

  Widget _buildBottomLeafImage() {
    return Positioned(
      bottom: -AppSize.s51,
      child: RotatedBox(
        quarterTurns: AppConstants.rotateToOpposite,
        child: Image.asset(
          ImageAssets.leaf,
          scale: 1.2,
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      flexibleSpace: const AppBarWithImage(),
      bottom: const PreferredSize(
        preferredSize: Size.fromHeight(AppSize.s190),
        child: CustomTabBar(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: AppConstants.numberOfTabBarController,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: ColorManager.white,
          appBar: _buildAppBar(),
          body: Stack(
            children: [
              _buildTabBar(),
              _buildBottomLeafImage(),
            ],
          ),
        ),
      ),
    );
  }
}
