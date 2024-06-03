import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:news_app/domain/viewmodels/routes.provider.dart';
import 'package:news_app/ui/screens/categories/category.screen.dart';
import 'package:news_app/ui/screens/home/home.screen.dart';
import 'package:provider/provider.dart';
import 'package:sliding_clipped_nav_bar/sliding_clipped_nav_bar.dart';

class MainScreen extends StatefulWidget {

  final StatefulNavigationShell navigationShell;

  const MainScreen({
    super.key,
    required this.navigationShell
  });

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  void _goToBranch(int index) {
    widget.navigationShell.goBranch(
      index,
      initialLocation: index == widget.navigationShell.currentIndex
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<RouteProvider>(
      builder: (context, value, child) {
        return Scaffold(
          body: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: widget.navigationShell,
          ),
          bottomNavigationBar: SlidingClippedNavBar(
            backgroundColor: Colors.white,
            barItems: [
              BarItem(
                  title: HomeScreen.route,
                  icon: Icons.home
              ),
              BarItem(
                  title: CategoryScreen.route,
                  icon: Icons.category
              ),
            ],
            selectedIndex: value.currentIndexSelectedPage,
            iconSize: 30,
            onButtonPressed: (int index) {
              setState(() {
                value.setCurrentIndexPage(index);
              });
              _goToBranch(value.currentIndexSelectedPage);
            },
            activeColor: Colors.black,
          ),
        );
      },
    );
  }
}
