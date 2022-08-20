import 'package:flutter/material.dart';
import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/font_manager.dart';
import '../../../../core/resources/strings_manager.dart';
import '../../../../core/resources/values_manager.dart';
import '../../../../core/widgets/custom_button.dart';
import '../widgets/planet_cart_item.dart';
import '../widgets/total_price.dart';

class CartView extends StatelessWidget {
  const CartView({Key? key}) : super(key: key);

  Widget _buildCartBody(BuildContext context) {
    return Column(
      children: [
        _buildPlanetsInCart(),
        _buildCheckoutTotalPrice(),
      ],
    );
  }

  Widget _buildCheckoutTotalPrice() {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildTotalPrice(),
          _buildCheckoutButton(),
        ],
      ),
    );
  }

  Widget _buildPlanetsInCart() {
    return Expanded(
      flex: 3,
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return const PlanetCartItem();
        },
      ),
    );
  }

  Widget _buildTotalPrice() {
    return const Padding(
      padding: EdgeInsets.only(
        left: AppPadding.p51,
        right: AppPadding.p43,
      ),
      child: TotalPrice(),
    );
  }

  Widget _buildCheckoutButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppPadding.p40),
      child: CustomButton(
        text: AppStrings.checkout,
        onPressed: () {},
      ),
    );
  }

  AppBar _buildCartAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: ColorManager.transparent,
      title: Text(
        AppStrings.blog,
        style: Theme.of(context).appBarTheme.titleTextStyle!.copyWith(
              fontFamily: FontConstants.interFontFamily,
            ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildCartAppBar(context),
      body: _buildCartBody(context),
      // body: const EmptyCart(
      //   text: AppStrings.emptyCart,
      // ),
    );
  }
}
 /*
 
 AppBar(
        centerTitle: false,
        title: Text(
          AppStrings.myCart,
          style: getBoldStyle(
            color: ColorManager.black,
            fontSize: AppSize.s25,
          ),
        ),
      ), */