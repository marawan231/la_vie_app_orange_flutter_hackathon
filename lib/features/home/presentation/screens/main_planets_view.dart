import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:la_vie_app_orange_hackathone/features/auth/presentation/widgets/loading_indicator.dart';
import 'package:la_vie_app_orange_hackathone/features/home/business_logic/cubit/plants_cubit.dart';
import 'package:la_vie_app_orange_hackathone/features/home/business_logic/cubit/plants_state.dart';
import 'package:la_vie_app_orange_hackathone/features/home/data/models/plants_model.dart';
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

  _buildScreenView(HomePlanetsModel planetData) {
    return Expanded(
      child: Column(
        children: [
          _buildTitle(context),
          _buildSearchBar(),
          _buildCategories(context),
          const SizedBox(
            height: AppSize.s40,
          ),
          _buildPlanetsView(planetData),
        ],
      ),
    );
  }

  Widget _buildTitle(BuildContext context) {
    return NameWithLogo(
      heightOfLogo: AppSize.s12,
      textStyle: Theme.of(context).textTheme.headlineLarge,
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

  _buildPlanetsView(HomePlanetsModel planetData) {
    return Expanded(
      flex: 5,
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 2 / 3,
          ),
          physics: const ClampingScrollPhysics(),
          itemCount: planetData.data!.length,
          itemBuilder: (context, index) {
            return PlanetCard(
              price: planetData.data![index].price!,
              title: planetData.data![index].name,
              image: planetData.data![index].imageUrl!,
              ontap: () {},
            );
          }),
    );
  }

  @override
  void initState() {
    BlocProvider.of<PlantsCubit>(context).getAllPlanets();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PlantsCubit, PlantsState<HomePlanetsModel>>(
      listener: (context, state) {},
      builder: (context, state) {
        return state.maybeWhen(
          success: ((data) {
            return _buildScreenView(data);
          }),
          orElse: () {
            return const LoadingIndicator();
          },
        );
        // return _buildPlanetsView();
      },
    );
  }
}
