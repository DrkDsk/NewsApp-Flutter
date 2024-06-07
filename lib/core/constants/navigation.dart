import 'package:flutter/material.dart';
import 'package:news_app/features/category/presentation/screens/category.screen.dart';
import 'package:news_app/features/home/presentation/screens/home.screen.dart';
import 'package:news_app/features/search/presentation/screens/search.screen.dart';

const List<BottomNavigationBarItem> bottomNavigationBarItems = [
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
];