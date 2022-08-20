import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/constants.dart';
import '../../../../core/resources/values_manager.dart';



class CurvedBottomNavigationBar extends StatefulWidget {
  const CurvedBottomNavigationBar({Key? key,required this.onTap}) : super(key: key);
final void Function(int) ? onTap;
  @override
  State<CurvedBottomNavigationBar> createState() =>
      _CurvedBottomNavigationBarState();
}

class _CurvedBottomNavigationBarState extends State<CurvedBottomNavigationBar> {
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: ColorManager.grey2.withOpacity(.1),
            blurRadius: AppSize.s20,
          ),
        ],
      ),
      child: CurvedNavigationBar(
        index: page,
        buttonBackgroundColor: ColorManager.primary,
        backgroundColor: ColorManager.transparent,
        animationDuration: const Duration(
          milliseconds: AppConstants.sliderAnimationTime,
        ),
        items: [
          Icon(
            FontAwesomeIcons.leaf,
            color: (pressedButtonNo == 0)
                ? AppConstants.selectedIconColor
                : AppConstants.unselectedIconColor,
          ),
          Icon(
            Icons.qr_code_scanner_outlined,
            color: (pressedButtonNo == 1)
                ? AppConstants.selectedIconColor
                : AppConstants.unselectedIconColor,
          ),
          Icon(
            Icons.home_filled,
            color: (pressedButtonNo == 2)
                ? AppConstants.selectedIconColor
                : AppConstants.unselectedIconColor,
          ),
          Icon(
            Icons.notifications_none,
            color: (pressedButtonNo == 3)
                ? AppConstants.selectedIconColor
                : AppConstants.unselectedIconColor,
          ),
          Icon(
            Icons.person_outline,
            color: (pressedButtonNo == 4)
                ? AppConstants.selectedIconColor
                : AppConstants.unselectedIconColor,
          ),
        ],
        key: _bottomNavigationKey,
        onTap: widget.onTap,
      ),
    );
  }
}
