import 'package:flutter/material.dart';
import '../../../../core/resources/route_manager.dart';
import 'custom_icon_container.dart';
import 'custom_search_bar.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

class SearchInput extends StatefulWidget {
  const SearchInput(
      {Key? key, required this.searchController, this.onFocusedChanged})
      : super(key: key);
  final TextEditingController searchController;
  final void Function(bool)? onFocusedChanged;

  @override
  State<SearchInput> createState() => _SearchInputState();
}

class _SearchInputState extends State<SearchInput> {
  FloatingSearchBarController searchController = FloatingSearchBarController();

  Widget _buildSearchBarTextField() {
    return CustomSearchBarTextField(
      controller: searchController,
      onFocusChanged: widget.onFocusedChanged,
    );
  }

  Widget _buildIconContainer() {
    return CustomIconContainer(
      icon: Icons.shopping_cart_outlined,
      onTap: () {
        Navigator.pushNamed(context, Routes.cartRoute);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildSearchBarTextField(),
          _buildIconContainer(),
        ],
      ),
    );
  }
}
