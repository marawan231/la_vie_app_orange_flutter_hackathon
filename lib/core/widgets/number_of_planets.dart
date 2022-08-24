import 'package:flutter/material.dart';
import '../resources/color_manager.dart';
import '../resources/values_manager.dart';
import 'Increament_decreament_icons.dart';

class NumberOfPlanets extends StatelessWidget {
  const NumberOfPlanets(
      {Key? key,
      this.iconsColor,
      this.radius,
      this.spaceBetweenButtons,
      required this.plusButtonOnPressed,
      required this.minusButtonOnPressed})
      : super(key: key);

  final Color? iconsColor;
  final double? radius;
  final bool? spaceBetweenButtons;
  final void Function()? plusButtonOnPressed;
  final void Function()? minusButtonOnPressed;

  Widget _buildPlusButton() {
    return IncreamentAndDecreameantIcons(
      icon: Icons.add,
      color: iconsColor ?? ColorManager.grey,
      radius: radius,
      onTap: plusButtonOnPressed,
    );
  }

  Widget _buildNumberOfPlanetUserWant(BuildContext context) {
    return Text(
      '1',
      style: Theme.of(context).textTheme.displayLarge,
    );
  }

  Widget _buildMinusButton() {
    return IncreamentAndDecreameantIcons(
      icon: Icons.remove,
      color: iconsColor ?? ColorManager.grey,
      radius: radius,
      onTap: minusButtonOnPressed,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildMinusButton(),
        if (spaceBetweenButtons ?? true)
          const SizedBox(
            width: AppSize.s8,
          ),
        _buildNumberOfPlanetUserWant(context),
        if (spaceBetweenButtons ?? true)
          const SizedBox(
            width: AppSize.s8,
          ),
        _buildPlusButton(),
      ],
    );
  }
}
