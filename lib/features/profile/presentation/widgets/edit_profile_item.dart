// ignore_for_file: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:la_vie_app_orange_hackathone/core/resources/color_manager.dart';
import 'package:la_vie_app_orange_hackathone/core/resources/font_manager.dart';
import 'package:la_vie_app_orange_hackathone/core/resources/style_manager.dart';
import 'package:la_vie_app_orange_hackathone/core/resources/values_manager.dart';

class EditProfileItem extends StatelessWidget {
  const EditProfileItem({
    Key? key,
    this.trailingIcon = false,
    this.onTap,
    required this.text,
    required this.leading,
    required this.textColor,
    required this.cardColor,
    this.elevation,
  }) : super(key: key);
  final bool trailingIcon;
  final void Function()? onTap;
  final String text;
  final Widget leading;
  final Color textColor;
  final Color cardColor;
  final double? elevation;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .1,
      child: Card(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(AppSize.s10),
          ),
        ),
        elevation: elevation,
        color: cardColor,
        child: Center(
          child: ListTile(
            leading: leading,
            title: Text(
              text,
              style: getSemiBoldStyle(
                color: textColor,
                //TODO change font family to opensans
                fontFamily: FontConstants.robotoFontFamily,
                fontSize: 16,
              ),
            ),
            trailing: trailingIcon
                ? InkWell(
                    onTap: onTap,
                    child: Icon(
                      Icons.arrow_forward,
                      color: ColorManager.darkPrimary,
                    ))
                : null,
          ),
        ),
      ),
    );
  }
}
/*InkWell(
  
               onTap: onTap,
              child: Icon(
                color: ColorManager.darkPrimary,
              ),
            ) */