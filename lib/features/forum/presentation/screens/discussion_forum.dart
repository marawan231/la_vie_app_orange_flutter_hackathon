import 'package:flutter/material.dart';
import '../../../../core/resources/strings_manager.dart';
import '../widgets/forum_category_container.dart';
import '../../../home/presentation/widgets/custom_search_bar.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';
import '../../../../core/resources/color_manager.dart';
import '../widgets/post_item.dart';

class DiscussionForumView extends StatefulWidget {
  const DiscussionForumView({Key? key}) : super(key: key);

  @override
  State<DiscussionForumView> createState() => _DiscussionForumViewState();
}

class _DiscussionForumViewState extends State<DiscussionForumView> {
  FloatingSearchBarController forumnSearchBarController =
      FloatingSearchBarController();

  _buildFloatingActionButton() {
    return FloatingActionButton(
      onPressed: () {},
      child: const Icon(Icons.add),
    );
  }

  PreferredSizeWidget? _buildAppBar() {
    return AppBar(
      backgroundColor: ColorManager.transparent,
      title: Text(AppStrings.discussionForum,
          style: Theme.of(context).appBarTheme.titleTextStyle),
    );
  }

  Widget _buildDiscussinForumsBody() {
    return Padding(
      padding: EdgeInsets.only(
        right: MediaQuery.of(context).size.width * .07,
        left: MediaQuery.of(context).size.width * .07,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSearchField(),
          _buildForumsCategories(),
          SizedBox(
            height: MediaQuery.of(context).size.height * .03,
          ),
          _buildPosts(),
        ],
      ),
    );
  }

  Widget _buildPosts() {
    return Expanded(
      child: ListView.builder(
          itemCount: 2,
          itemBuilder: ((context, index) {
            return Padding(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.height * .02),
              child: const PostItem(),
            );
          })),
    );
  }

  Widget _buildSearchField() {
    return SizedBox(
      width: double.infinity,
      child: CustomSearchBarTextField(
        controller: forumnSearchBarController,
      ),
    );
  }

  Widget _buildForumsCategories() {
    return Row(
      children: [
        _buildAllForumsTap(),
        SizedBox(width: MediaQuery.of(context).size.width * .02),
        _buildMyForumsTap(),
      ],
    );
  }

  Widget _buildMyForumsTap() {
    return ForumsCategoryContainer(
      onTap: () {},
    );
  }

  Widget _buildAllForumsTap() {
    return ForumsCategoryContainer(
      onTap: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      floatingActionButton: _buildFloatingActionButton(),
      appBar: _buildAppBar(),
      body: _buildDiscussinForumsBody(),
    );
  }
}
