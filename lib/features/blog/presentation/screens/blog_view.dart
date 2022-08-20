import 'package:flutter/material.dart';
import '../../../../core/resources/font_manager.dart';
import '../../../../core/resources/strings_manager.dart';
import '../widgets/planet_blog_item.dart';
import '../../../../core/resources/color_manager.dart';

class BlogView extends StatelessWidget {
  const BlogView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorManager.transparent,
        title: Text(
          AppStrings.blog,
          style: Theme.of(context).appBarTheme.titleTextStyle!.copyWith(
                fontFamily: FontConstants.interFontFamily,
              ),
        ),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: ((context, index) {
          return const PlanetBlogItem();
        }),
      ),
    );
  }
}
