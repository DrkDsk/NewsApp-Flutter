import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:news_app/domain/viewmodels/news.viewmodel.dart';
import 'package:news_app/domain/viewmodels/routes.provider.dart';
import 'package:news_app/ui/screens/categories/category.screen.dart';
import 'package:news_app/ui/screens/home/home.screen.dart';
import 'package:news_app/ui/screens/search/search.screen.dart';
import 'package:provider/provider.dart';

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

  late NewsViewModel newsViewModel;

  @override
  void initState() {
    super.initState();
    newsViewModel = Provider.of<NewsViewModel>(context, listen: false);
  }

  void _goToBranch(int index) {
    if (index == 0) {
      newsViewModel.setHeaderListNewsTitle("Latest news");
      newsViewModel.markAsLoading();
      newsViewModel.fetchTopHeadlines();
    }

    if (index == 2) {
      newsViewModel.clearArticles();
      newsViewModel.clearTextSearchController();
    }

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
          bottomNavigationBar: BottomNavigationBar(
            onTap: (int index) {
              setState(() {
                value.setCurrentIndexPage(index);
              });
              _goToBranch(value.currentIndexSelectedPage);
            },
            selectedLabelStyle: const TextStyle(
              fontFamily: 'Poppins',
              fontSize: 15
            ),
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.grey.shade500,
            currentIndex: value.currentIndexSelectedPage,
            items: const [
              BottomNavigationBarItem(
                label: HomeScreen.route,
                icon: Icon(
                    Icons.home
                )
              ),
              BottomNavigationBarItem(
                  label: CategoryScreen.route,
                  icon: Icon(
                      Icons.category
                  )
              ),
              BottomNavigationBarItem(
                label: SearchScreen.route,
                icon: Icon(
                    Icons.search
                )
              )
            ],
          ),
        );
      },
    );
  }
}
