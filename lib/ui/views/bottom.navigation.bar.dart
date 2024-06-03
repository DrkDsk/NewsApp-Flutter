import 'package:flutter/material.dart';
import 'package:news_app/domain/viewmodels/routes.provider.dart';
import 'package:news_app/ui/resources/colors.dart';
import 'package:news_app/ui/screens/categories/category.screen.dart';
import 'package:news_app/ui/screens/home/home.screen.dart';
import 'package:provider/provider.dart';

class NewsBottomNavigationBar extends StatefulWidget {
  const NewsBottomNavigationBar({super.key});

  @override
  State<NewsBottomNavigationBar> createState() => _NewsBottomNavigationBarState();
}

class _NewsBottomNavigationBarState extends State<NewsBottomNavigationBar> {

  late RouteProvider routeProvider;

  void _onItemTapped({required int index, required String routeName}) {
    routeProvider.setCurrentIndexPage(index);
    Navigator.pushNamed(context, routeName);
  }

  @override
  void initState(){
    super.initState();
    routeProvider = Provider.of<RouteProvider>(context, listen: false);
  }

  @override
  Widget build(BuildContext context) {

    final RouteProvider routeProvider = Provider.of<RouteProvider>(context);

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24),
      decoration: BoxDecoration(
        color: darkPrimaryBlueColor.withOpacity(0.8),
        borderRadius: BorderRadius.circular(24),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            spreadRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildNavItem(icon: Icons.home, label: 'Home', index: 0, routeProvider: routeProvider, routeName: HomeScreen.route),
          _buildNavItem(icon: Icons.category, label: 'Categories', index: 1, routeProvider: routeProvider, routeName: CategoryScreen.route)
        ],
      ),
    );
  }

  Widget _buildNavItem({
    required IconData icon,
    required String label,
    required int index,
    required RouteProvider routeProvider,
    required String routeName
  }) {
    return GestureDetector(
      onTap: () => _onItemTapped(index: index, routeName: routeName),
      child: Container(
        color: Colors.transparent,
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              color: routeProvider.currentIndexSelectedPage == index ? Colors.blue : Colors.grey,
            ),
            Text(
              label,
              style: TextStyle(
                color: routeProvider.currentIndexSelectedPage == index ? Colors.blue : Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
