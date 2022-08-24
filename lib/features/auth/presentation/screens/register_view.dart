import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:la_vie_app_orange_hackathone/features/auth/business_logic/cubit/auth_cubit.dart';
import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/constants.dart';
import '../../../../core/resources/route_manager.dart';
import '../../../../core/resources/strings_manager.dart';
import '../../../../core/resources/utils.dart';
import '../../../../core/resources/values_manager.dart';
import '../../../../core/web_services/network_exceptions.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../business_logic/cubit/auth_state.dart';
import '../../data/models/auth_model.dart';
import '../widgets/custom_divider.dart';
import '../../../../core/widgets/custom_textfield.dart';
import '../widgets/loading_indicator.dart';
import '../widgets/social_buttons.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  Widget _buildRegisterBlocBuilder() {
    return BlocConsumer<AuthCubit, AuthResultState<AuthModel>>(
      listener: (context, AuthResultState<AuthModel> state) {
        state.whenOrNull(success: ((data) {
          token = data.data!.accessToken;

          showScaffold(
              text: data.message,
              context: context,
              color: ColorManager.primary);
          Navigator.pushReplacementNamed(context, Routes.homeRoute);
        }), error: ((error) {
          showScaffold(
              text: NetworkExceptions.getErrorMessage(error),
              context: context,
              color: ColorManager.error);
        }));
      },
      builder: (context, state) {
        return state.maybeWhen(loading: () {
          return const LoadingIndicator();
        }, orElse: () {
          return _buildRegisterViewBody();
        })!;
      },
    );
  }

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
    return Expanded(
      child: CustomTextField(
        validator: (value) {
          return checkValidation(value);
        },
        text: AppStrings.firstName,
        controller: firstNameController,
      ),
    );
  }

  Widget _buildLastNameTextField() {
    return Expanded(
      child: CustomTextField(
        validator: (value) {
          return checkValidation(value);
        },
        text: AppStrings.lastName,
        controller: lastNameController,
      ),
    );
  }

  Widget _buildEmailTextField() {
    return CustomTextField(
      validator: (value) {
        return checkValidation(value);
      },
      text: AppStrings.email,
      controller: emailController,
    );
  }

  Widget _buildPassTextField() {
    return CustomTextField(
      validator: (value) {
        return checkValidation(value);
      },
      text: AppStrings.password,
      controller: passwordController,
    );
  }

  Widget _buildConfirmPassTextField() {
    return CustomTextField(
      validator: (value) {
        return checkValidation(value);
      },
      text: AppStrings.confirmPassword,
      controller: confirmPasswordController,
    );
  }

  Widget _buildRegisterButton() {
    return CustomButton(
      text: AppStrings.signUp,
      onPressed: () {
        if (_formKey.currentState!.validate()) {
          _sumbitRegestrationData();
        }
      },
    );
  }

  void _sumbitRegestrationData() {
    BlocProvider.of<AuthCubit>(context).registerNewUser(
      firstName: firstNameController.text,
      lastName: lastNameController.text,
      email: emailController.text,
      password: passwordController.text,
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
      body: _buildRegisterBlocBuilder(),
    );
  }
}
