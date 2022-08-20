import 'package:flutter/material.dart';
import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/style_manager.dart';
import '../../../../core/resources/values_manager.dart';
import '../../../../core/widgets/custom_button.dart';
import '../widgets/custom_check_box.dart';

import '../../../../core/resources/font_manager.dart';
import '../../../../core/resources/strings_manager.dart';

class QuizView extends StatelessWidget {
  const QuizView({Key? key}) : super(key: key);
  Widget _buildQuizBody(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * .05,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildQuizHeadline(),
          _buildQuestionText(),
          _buildChoicesList(),
          _buildNavigationButtons(context),
        ],
      ),
    );
  }

  _buildQuizHeadline() {
    return Row(
      children: [
        _buildQuizTitle(),
        _buildScoreText(),
      ],
    );
  }

  _buildQuizTitle() {
    return Text(
      'Question',
      style: getMediumStyle(
        color: ColorManager.grey11,
        fontSize: AppSize.s35,
      ),
    );
  }

  _buildScoreText() {
    return RichText(
        text: TextSpan(
      children: [
        TextSpan(
          text: ' 2',
          style: getMediumStyle(
            color: ColorManager.primary,
            fontSize: AppSize.s35,
          ),
        ),
        TextSpan(
          text: '/10',
          style: getMediumStyle(
            color: ColorManager.grey8,
            fontSize: AppSize.s20,
          ),
        ),
      ],
    ));
  }

  Widget _buildQuestionText() {
    return Text(
      'What is the user experience?',
      style: getSemiBoldStyle(
        color: ColorManager.grey11,
        fontSize: AppSize.s20,
      ),
    );
  }

  Widget _buildChoicesList() {
    return Expanded(
      child: SizedBox(
        child: ListView.builder(
          itemCount: 3,
          itemBuilder: ((context, index) {
            return _buildChoiceItem(context);
          }),
        ),
      ),
    );
  }

  Widget _buildChoiceItem(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * .04),
      child: Container(
        decoration: BoxDecoration(
          color: ColorManager.grey4,
          border: Border.all(
            color: ColorManager.primary,
            width: 2,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(AppSize.s10),
          ),
        ),
        child: ListTile(
          title: Text(
            'The user experience is how the developer feels about a user.',
            style: getMediumStyle(
              color: ColorManager.black,
              fontSize: AppSize.s15,
            ),
          ),
          trailing: MyCustomCheckBox(
            shouldShowBorder: true,
            checkedIcon: Icons.circle,
            checkBoxSize: AppSize.s25,
            checkedIconColor: ColorManager.primary,
            checkedFillColor: ColorManager.white,
            value: true,
            onChanged: (value) {},
          ),
        ),
      ),
    );
  }

  Widget _buildNavigationButtons(BuildContext context) {
    return Expanded(
      flex: 1,
      child: SizedBox(
        child: Padding(
          padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * .5,
          ),
          child: Align(
            alignment: Alignment.topRight,
            child: SizedBox(
                height: AppSize.s35,
                width: double.infinity,
                child: CustomButton(
                  text: 'Next',
                  onPressed: () {},
                )),
          ),
        ),
      ),
    );
    // return Expanded(
    //   flex: 2,
    //   child: Padding(
    //     padding: const EdgeInsets.only(
    //       bottom: AppPadding.p12,
    //       left: AppPadding.p20,
    //       right: AppPadding.p20,
    //     ),
    //     child: Container(
    //       child: Row(
    //         crossAxisAlignment: CrossAxisAlignment.start,
    //         children: [
    //           CustomButton(
    //             text: 'Next',
    //             onPressed: () {},
    //           ),
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      appBar: AppBar(
        backgroundColor: ColorManager.transparent,
        title: Text(
          AppStrings.courseExam,
          style: Theme.of(context).appBarTheme.titleTextStyle!.copyWith(
                fontWeight: FontWeightManager.medium,
              ),
        ),
      ),
      body: _buildQuizBody(context),
    );
  }
}
