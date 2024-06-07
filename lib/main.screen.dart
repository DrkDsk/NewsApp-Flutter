import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:news_app/features/article/presentation/providers/news.viewmodel.dart';
import 'package:news_app/core/shared/presentation/providers/routes.provider.dart';
import 'package:news_app/features/category/presentation/screens/category.screen.dart';
import 'package:news_app/features/home/presentation/screens/home.screen.dart';
import 'package:news_app/features/search/presentation/screens/search.screen.dart';
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
      newsViewModel.setLoading();
      newsViewModel.fetchTopHeadlines(context: context);
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
    return Consumer<NewsViewModel>(
      builder: (context, value, child) {
        return Scaffold(
          body: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: widget.navigationShell,
          ),
          bottomNavigationBar: Consumer<RouteProvider>(
            builder: (context, value, child) {
              return BottomNavigationBar(
                onTap: (int index) {
                  setState(() {
                    value.setCurrentIndexPage(index);
                  });
                  _goToBranch(value.currentIndexSelectedPage);
                },
                selectedLabelStyle: const TextStyle(
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
              );
            },
          ),
        );
      },
    );
  }
}
