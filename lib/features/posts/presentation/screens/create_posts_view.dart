import 'package:flutter/material.dart';
import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/strings_manager.dart';

import '../../../../core/widgets/custom_textfield.dart';
import '../widgets/add_photo_container.dart';

import '../../../../core/widgets/custom_button.dart';

class CreatePostsView extends StatelessWidget {
  const CreatePostsView({Key? key}) : super(key: key);

  Widget _buildCreatePostsBody(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: MediaQuery.of(context).size.height * .03,
        right: MediaQuery.of(context).size.height * .03,
        top: MediaQuery.of(context).size.height * .02,
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildCreatePostContainer(context),
            SizedBox(height: MediaQuery.of(context).size.height * .03),
            _buildTitleTextField(),
            SizedBox(height: MediaQuery.of(context).size.height * .03),
            _buildDescriptionTextField(),
            SizedBox(height: MediaQuery.of(context).size.height * .03),
            _buildPostButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildCreatePostContainer(BuildContext context) {
    return const AddPhotoContainer(icon: Icons.add, text: AppStrings.addPhoto);
  }

  Widget _buildTitleTextField() {
    return const CustomTextField(text: 'Title');
  }

  Widget _buildDescriptionTextField() {
    return const CustomTextField(
      text: 'Description',
      height: .15,
    );
  }

  Widget _buildPostButton() {
    return CustomButton(text: 'Post', onPressed: () {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorManager.transparent,
        title: Text(
          AppStrings.createNewPost,
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
      ),
      body: _buildCreatePostsBody(context),
    );
  }
}
