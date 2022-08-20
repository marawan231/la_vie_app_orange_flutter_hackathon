import 'package:flutter/material.dart';

import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/route_manager.dart';
import '../../../../core/resources/strings_manager.dart';
import '../../../../core/resources/values_manager.dart';
import '../../../../core/widgets/custom_button.dart';
import '../widgets/custom_divider.dart';
import '../../../../core/widgets/custom_textfield.dart';
import '../widgets/social_buttons.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _formKey = GlobalKey<FormState>();

  Widget _buildLoginViewBody() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: AppPadding.p32),
      child: _buildLoginForm(),
    );
  }

  Widget _buildLoginForm() {
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        child: SizedBox(
          height: AppSize.s400,
          child: _buildLoginTextFields(),
        ),
      ),
    );
  }

  Widget _buildLoginTextFields() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildEmailTextField(),
        _buildPassTextField(),
        _buildLoginButton(),
        _buildDivider(),
        _buildSignInWithGoogleAndFacebook(),
      ],
    );
  }

  Widget _buildEmailTextField() {
    return const CustomTextField(
      text: AppStrings.email,
    );
  }

  Widget _buildPassTextField() {
    return const CustomTextField(
      text: AppStrings.password,
    );
  }

  Widget _buildLoginButton() {
    return CustomButton(
      text: AppStrings.login,
      onPressed: () {
        Navigator.pushReplacementNamed(context, Routes.homeRoute);
      },
    );
  }

  Widget _buildDivider() {
    return const CustomDivider(
      text: AppStrings.continueWith,
    );
  }

  Widget _buildSignInWithGoogleAndFacebook() {
    return SocialButtons(
      googleOnTap: () {},
      facebookOnTap: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      body: _buildLoginViewBody(),
    );
  }
}
