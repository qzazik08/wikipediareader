import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wikipedia_reader/ui/article_view/cubit/artice_cubit.dart';
import 'package:wikipedia_reader/ui/article_view/widgets/articlePage_screen.dart';
import 'package:wikipedia_reader/ui/main_menu/main_menu.dart';

class AppRouter {
  static final String home = "/";
  static final String random = "/random";

  static Map<String, WidgetBuilder> get routes => {
    home: (context) => const MainMenu(),
    random: (context) => BlocProvider(
      create: (context) => ArticleCubit(),
      child: const ArticlePageScreen(),
    ),
  };
}
