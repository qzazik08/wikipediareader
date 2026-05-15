import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:wikipedia_reader/ui/article_view/cubit/artice_cubit.dart';
import 'package:wikipedia_reader/ui/article_view/widgets/articlePage_screen.dart';
import 'package:wikipedia_reader/ui/main_menu/main_menu.dart';

final router = GoRouter(
  initialLocation: "/random", 
  routes: [
    StatefulShellRoute.indexedStack(builder:(context, state, navigationShell) => MainMenu(navigationShell: navigationShell),
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: "/random", 
              builder: (context, state) => BlocProvider(
                create: (context) => ArticleCubit(),
                child: const ArticlePageScreen(),
              )
            )
          ]
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: "/menu", 
              builder: (context, state) => BlocProvider(
                create: (context) => ArticleCubit(),
                child: const ArticlePageScreen(),
              ),
            )
          ]
        )
      ]
    )
  ]
);
