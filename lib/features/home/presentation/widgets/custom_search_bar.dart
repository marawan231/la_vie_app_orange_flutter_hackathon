import 'package:flutter/material.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';
import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/values_manager.dart';
import '../../../auth/presentation/widgets/text_field_container.dart';

class CustomSearchBarTextField extends StatelessWidget {
  const CustomSearchBarTextField(
      {Key? key, required this.controller, this.onFocusChanged})
      : super(key: key);
  final FloatingSearchBarController controller;
  final void Function(bool)? onFocusChanged;

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      height: .075,
      width: .8,
      child: FloatingSearchBar(
        margins: const EdgeInsets.all(AppSize.s0),
        backgroundColor: ColorManager.grey1,
        controller: controller,
        automaticallyImplyBackButton: false,
        backdropColor: Colors.transparent,
        queryStyle: Theme.of(context).textTheme.titleSmall,
        leadingActions: [
          Icon(
            Icons.search,
            color: ColorManager.grey,
            size: AppSize.s25,
          )
        ],
        hint: 'Search',
        accentColor: ColorManager.lightPrimary,
        hintStyle: Theme.of(context).inputDecorationTheme.hintStyle,
        openAxisAlignment: 0.0,
        border: BorderSide(color: ColorManager.grey1, width: AppSize.s1_5),
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s10)),
        axisAlignment: 0.0,
        elevation: 0.0,
        physics: const BouncingScrollPhysics(),
        onFocusChanged: onFocusChanged,
        onQueryChanged: (query) {
          //Your methods will be here
          // searchedText = query;
          //    addSearchedForItemsToSearchedList(searchedText);
        },
        transitionCurve: Curves.easeInOut,
        transitionDuration: const Duration(milliseconds: 500),
        transition: CircularFloatingSearchBarTransition(),
        debounceDelay: const Duration(milliseconds: 500),
        actions: const [],
        builder: (context, transition) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(AppSize.s8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: AppSize.s20,
                  color: ColorManager.error,
                ),
                Container(
                  height: AppSize.s20,
                  color: ColorManager.error,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
