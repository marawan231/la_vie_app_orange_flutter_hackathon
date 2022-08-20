import 'package:flutter/material.dart';
import '../../../../core/resources/assets_manager.dart';
import '../../../../core/resources/values_manager.dart';
import '../widgets/search_bar.dart';
import '../../../../core/widgets/name_and_logo.dart';
import '../widgets/category_item.dart';
import '../widgets/planet_card.dart';

class MainPlanetsView extends StatefulWidget {
  const MainPlanetsView({Key? key}) : super(key: key);

  @override
  State<MainPlanetsView> createState() => _MainPlanetsViewState();
}

class _MainPlanetsViewState extends State<MainPlanetsView> {
  final TextEditingController searchController = TextEditingController();
  bool isSearching = false;

  Widget _buildTitle(BuildContext context) {
    return NameWithLogo(
      heightOfLogo: AppSize.s12,
      textStyle: Theme.of(context).textTheme.titleMedium,
    );
  }

  Widget _buildSearchBar() {
    return SearchInput(
        searchController: searchController,
        onFocusedChanged: (isFocused) {
          isSearching = isFocused;
        });
  }

  Widget _buildCategories(BuildContext context) {
    return SizedBox(
      height: AppSize.s40,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            return const CategoryItem();
          }),
    );
  }

  Widget _buildPlanets(BuildContext context) {
    return Expanded(
      flex: 5,
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 2 / 3,
          ),
          physics: const ClampingScrollPhysics(),
          itemCount: 4,
          itemBuilder: (context, index) {
            return PlanetCard(
              image: ImageAssets.homePlanet,
              ontap: () {},
            );
          }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          _buildTitle(context),
          _buildSearchBar(),
          _buildCategories(context),
          const SizedBox(
            height: AppSize.s40,
          ),
          _buildPlanets(context),
        ],
      ),
    );
  }
}
