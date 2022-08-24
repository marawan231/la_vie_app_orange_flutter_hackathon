import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:la_vie_app_orange_hackathone/core/resources/constants.dart';
import 'package:la_vie_app_orange_hackathone/core/resources/route_manager.dart';
import 'package:la_vie_app_orange_hackathone/core/resources/utils.dart';
import 'package:la_vie_app_orange_hackathone/core/web_services/network_exceptions.dart';
import 'package:la_vie_app_orange_hackathone/features/auth/business_logic/cubit/auth_cubit.dart';
import 'package:la_vie_app_orange_hackathone/features/auth/data/models/auth_model.dart';
import 'package:la_vie_app_orange_hackathone/features/auth/presentation/widgets/loading_indicator.dart';
import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/strings_manager.dart';
import '../../../../core/resources/values_manager.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../business_logic/cubit/auth_state.dart';
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
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Widget _buildLoginBuilder() {
    return BlocConsumer<AuthCubit, AuthResultState<AuthModel>>(
      listener: (context, AuthResultState<AuthModel> state) {
        state.whenOrNull(success: ((data) {
          token = data.data!.accessToken;
          print(token);
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
      builder: (context, AuthResultState<AuthModel> state) {
        return state.maybeWhen(loading: () {
          return const LoadingIndicator();
        }, orElse: () {
          return _buildLoginViewBody();
        })!;
      },
    );
  }

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
    return CustomTextField(
      keyboardType: TextInputType.emailAddress,
      controller: emailController,
      text: AppStrings.email,
      validator: (value) {
        return checkValidation(value);
      },
    );
  }

  Widget _buildPassTextField() {
    return CustomTextField(
      obscureText: true,
      controller: passwordController,
      text: AppStrings.password,
      validator: (value) {
        return checkValidation(value);
      },
    );
  }

  Widget _buildLoginButton() {
    return CustomButton(
        text: AppStrings.login,
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            _sumbitLoginData();
          }
        });
  }

  void _sumbitLoginData() {
    BlocProvider.of<AuthCubit>(context).login(
      email: emailController.text,
      password: passwordController.text,
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
      body: _buildLoginBuilder(),
    );
  }
}
