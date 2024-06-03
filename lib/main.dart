import 'package:flutter/material.dart';
import 'package:news_app/data/services/api.service.dart';
import 'package:news_app/domain/viewmodels/news.viewmodel.dart';
import 'package:news_app/domain/viewmodels/routes.provider.dart';
import 'package:news_app/navigation/app.navigation.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => NewsViewModel(apiService: ApiService()),
        ),
        ChangeNotifierProvider(
            create: (_) => RouteProvider()
        )
      ],
      child: MaterialApp.router(
        routerConfig: AppNavigation.router,
        debugShowCheckedModeBanner: false,
        title: 'News App',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
      ),
    );
  }
}
