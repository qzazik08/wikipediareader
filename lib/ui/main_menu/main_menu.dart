import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:wikipedia_reader/ui/article_view/cubit/artice_cubit.dart';
import 'package:wikipedia_reader/ui/article_view/widgets/articlePage_screen.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: BottomNavigationBar(
        items: _buildBottomNavBarItems,
        currentIndex: navigationShell.currentIndex,
        onTap: (value) {
          return navigationShell.goBranch(
            value,
            initialLocation: value == navigationShell.currentIndex,
          );
        },
      ),
    );
  }

  List<BottomNavigationBarItem> get _buildBottomNavBarItems => [
    const BottomNavigationBarItem(icon: Icon(Icons.casino), label: "Random"),
    const BottomNavigationBarItem(icon: Icon(Icons.casino), label: "Random"),
  ];
}
