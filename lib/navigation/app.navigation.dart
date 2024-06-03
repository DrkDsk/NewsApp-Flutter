import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:news_app/ui/screens/article/article.screen.dart';
import 'package:news_app/ui/screens/categories/category.screen.dart';
import 'package:news_app/ui/screens/home/home.screen.dart';
import 'package:news_app/ui/screens/main.screen.dart';

class AppNavigation {
  AppNavigation._();

  static String initRoute = '/home';
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  static final _rootNavigatorHome = GlobalKey<NavigatorState>(debugLabel: 'shellHome');
  static final _rootNavigatorCategories = GlobalKey<NavigatorState>(debugLabel: 'shellCategories');

  static final GoRouter router =
  GoRouter(
    initialLocation: initRoute,
    navigatorKey: _rootNavigatorKey,
    debugLogDiagnostics: true,
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
                    /*builder: (context, state) {
                      return ArticleScreen(
                        key: state.pageKey,
                      );
                    }*/
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
          )
        ],
      ),
    ],
  );
}