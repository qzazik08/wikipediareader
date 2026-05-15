import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wikipedia_reader/ui/article_view/cubit/artice_cubit.dart';
import 'package:wikipedia_reader/ui/article_view/widgets/articlePage_screen.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
                Navigator.pushNamed(context, "/random");
            },
            child: Text("Random Article"),
          ),
          ElevatedButton(
            onPressed: () {
              SystemNavigator.pop();
            },
            child: Text("Exit"),
          ),
        ],
      ),
    );
  }
}
