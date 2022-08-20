import 'package:flutter/material.dart';

import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/constants.dart';
import '../../../../core/resources/strings_manager.dart';
import '../../../../core/resources/values_manager.dart';
import '../../../../core/widgets/custom_button.dart';
import '../widgets/custom_divider.dart';
import '../../../../core/widgets/custom_textfield.dart';
import '../widgets/social_buttons.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  final _formKey = GlobalKey<FormState>();

  Widget _buildRegisterViewBody() {
    return Container(
      height: MediaQuery.of(context).size.height * .4,
      padding: const EdgeInsets.symmetric(horizontal: AppPadding.p32),
      child: _buildRegisterForm(),
    );
  }

  Widget _buildRegisterForm() {
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        child: SizedBox(
          height: AppConstants.registerBodyHieght,
          child: _buildRegisterTextFields(),
        ),
      ),
    );
  }

  Widget _buildRegisterTextFields() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildUserNameTextField(),
        _buildEmailTextField(),
        _buildPassTextField(),
        _buildConfirmPassTextField(),
        _buildRegisterButton(),
        _buildDivider(),
        _buildSignInWithSocial(),
      ],
    );
  }

  Widget _buildUserNameTextField() {
    return Row(
      children: [
        _buildFirstNameTextField(),
        const SizedBox(
          width: AppSize.s16,
        ),
        _buildLastNameTextField(),
      ],
    );
  }

  Widget _buildFirstNameTextField() {
    return const Expanded(child: CustomTextField(text: AppStrings.firstName));
  }

  Widget _buildLastNameTextField() {
    return const Expanded(child: CustomTextField(text: AppStrings.lastName));
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

  Widget _buildConfirmPassTextField() {
    return const CustomTextField(
      text: AppStrings.confirmPassword,
    );
  }

  Widget _buildRegisterButton() {
    return CustomButton(
      text: AppStrings.signUp,
      onPressed: () {},
    );
  }

  Widget _buildDivider() {
    return const CustomDivider(
      text: AppStrings.continueWith,
    );
  }

  Widget _buildSignInWithSocial() {
    return SocialButtons(
      googleOnTap: () {},
      facebookOnTap: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      body: _buildRegisterViewBody(),
    );
  }
}
