import 'package:flutter/material.dart';
import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/constants.dart';
import '../../../../core/resources/route_manager.dart';
import '../widgets/bottom_curved_navbar.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: ColorManager.white,
      bottomNavigationBar: CurvedBottomNavigationBar(
        onTap: (index) {
          if (index == 4) {
            Navigator.pushNamed(context, Routes.profileRoute).then((value) {
              setState(() {
                page = 2;
                pressedButtonNo = 2;
              });
            });
          } else if (index != 4) {
            setState(() {
              page = index;
              pressedButtonNo = index;
            });
          }
        },
      ),
      body: Column(
        children: [
          screens[page],
        ],
      ),
    );
  }
}




 // bottomNavigationBar: CurvedNavigationBar(

        //   onTap: (index) {
        //     setState() {
        //       pressedButtonNo = index;
        //     }
        //   },
        // ),
        // body: Center(
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: [
        //       screens[_page],
        //       ElevatedButton(
        //         child: const Text('Go To Page of index 2'),
        //         onPressed: () {
        //           final CurvedNavigationBarState? navBarState =
        //               _bottomNavigationKey.currentState;
        //           navBarState?.setPage(2);
        //         },
        //       )
        //     ],
        //   ),
        // )


   // ElevatedButton(
              //   child: Text('Go To Page of index 2'),
              //   onPressed: () {
              //     //Page change using state does the same as clicking index 1 navigation button
              //     final CurvedNavigationBarState? navBarState =
              //         _bottomNavigationKey.currentState;
              //     navBarState?.setPage(2);
              //   },
              // )