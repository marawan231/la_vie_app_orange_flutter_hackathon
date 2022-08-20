import 'package:flutter/material.dart';


import '../../../../core/resources/strings_manager.dart';
import '../widgets/notfitcation_item.dart';

class NotifiticationView extends StatelessWidget {
  const NotifiticationView({Key? key}) : super(key: key);

  Widget _buildBody(context) {
    return Expanded(
      child: Column(
        children: [
          _buildViewTitle(context),
          _buildNotificationList(),
        ],
      ),
    );
  }

  Widget _buildViewTitle(BuildContext context) {
    return Center(
      child: Text(
        AppStrings.notification,
        textAlign: TextAlign.center,
        style: Theme.of(context).appBarTheme.titleTextStyle,
      ),
    );
  }

  Widget _buildNotificationList() {
    return Expanded(
      child: ListView.builder(
        itemCount: 14,
        itemBuilder: (context, index) {
          return const NotfitcationItem();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildBody(context);
  }
}
