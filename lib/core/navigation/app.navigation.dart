import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:news_app/features/article/presentation/screens/article.screen.dart';
import 'package:news_app/features/category/presentation/screens/category.screen.dart';
import 'package:news_app/features/home/presentation/screens/home.screen.dart';
import 'package:news_app/main.screen.dart';
import 'package:news_app/features/search/presentation/screens/search.screen.dart';

class AppNavigation {
  AppNavigation._();

  static String initRoute = '/home';
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  static final _rootNavigatorHome = GlobalKey<NavigatorState>(debugLabel: 'shellHome');
  static final _rootNavigatorCategories = GlobalKey<NavigatorState>(debugLabel: 'shellCategories');
  static final _rootNavigatorSearch = GlobalKey<NavigatorState>(debugLabel: 'shellSearch');

  static final GoRouter router =
  GoRouter(
    initialLocation: initRoute,
    navigatorKey: _rootNavigatorKey,
    routes: <RouteBase>[
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return MainScreen(navigationShell: navigationShell);
        },
        branches: <StatefulShellBranch>[
          StatefulShellBranch(
            navigatorKey: _rootNavigatorHome,
            routes: [
              GoRoute(
                path: '/home',
                name: HomeScreen.route,
                builder: (context, state) {
                  return HomeScreen(
                    key: state.pageKey,
                  );
                },
                routes: [
                  GoRoute(
                    path: 'article',
                    name: 'article',
                    pageBuilder: (context, state) {
                      return CustomTransitionPage(
                        child: const ArticleScreen(),
                        transitionsBuilder: (context, animation, secondaryAnimation, child) {
                          return FadeTransition(opacity: animation, child: child);
                        }
                      );
                    },
                  )
                ]
              )
            ]
          ),
          StatefulShellBranch(
              navigatorKey: _rootNavigatorCategories,
              routes: [
                GoRoute(
                  path: '/categories',
                  name: CategoryScreen.route,
                  builder: (context, state) {
                    return CategoryScreen(
                      key: state.pageKey,
                    );
                  }
                )
              ]
          ),
          StatefulShellBranch(
              navigatorKey: _rootNavigatorSearch,
              routes: [
                GoRoute(
                    path: '/search',
                    name: SearchScreen.route,
                    builder: (context, state) {
                      return SearchScreen(
                        key: state.pageKey,
                      );
                    }
                )
              ]
          ),
        ],
      ),
    ],
  );
}