import 'package:flutter/material.dart';
import 'package:la_vie_app_orange_hackathone/features/blog/presentation/screens/blog_view.dart';
import 'package:la_vie_app_orange_hackathone/features/forum/presentation/screens/discussion_forum.dart';
import 'color_manager.dart';
import 'values_manager.dart';
import '../../features/auth/presentation/screens/forgot_password_view.dart';
import '../../features/home/presentation/screens/main_planets_view.dart';
import '../../features/notification/presentation/screens/notifitication_view.dart';
import '../../features/profile/presentation/screens/profile_view.dart';
import '../../features/qr_scanner/presentation/screens/scan_qr_view.dart';

class AppConstants {
  static const double heightFactor = 1.8;
  static const int splashDelay = 2;
  static const int sliderAnimationTime = 500;
  static const int numberOfTabBarController = 2;
  static const int rotateToOpposite = 90;
  static const double registerBodyHieght = 500;

  final border = const OutlineInputBorder(
    borderSide: BorderSide(color: Colors.transparent, width: AppSize.s1_5),
    borderRadius: BorderRadius.all(
      Radius.circular(AppSize.s10),
    ),
  );

  static final Color selectedIconColor = ColorManager.white;
  static final Color unselectedIconColor = ColorManager.black;
}

int page = 2;
int pressedButtonNo = 2;
String baseUrl = 'https://lavie.orangedigitalcenteregypt.com/api/v1/';
String imageBaseUrl = 'https://lavie.orangedigitalcenteregypt.com';

List screens = [
  const DiscussionForumView(),
  const ScanView(),
  const MainPlanetsView(),
  const NotifiticationView(),
  const ProfileView(),
];

String? token;
