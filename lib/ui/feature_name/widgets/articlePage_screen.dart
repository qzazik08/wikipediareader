import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import '../../../data/repository/RandomArticleRepository.dart';
import '../view_models/article_view_model.dart';
import '../widgets/article_page.dart';
import '../../../summary.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ArticlePageScreen extends StatefulWidget {
  ArticlePageScreen({super.key});

  State<ArticlePageScreen> createState() => _ArticlePageScreenState();
}

class SummaryCubit extends Cubit<Summary>{
  final RandomArticleRepository _repo;
  CounterCubit(): super();
  void getRandomArticle() => emit(repo.RandomArticleRepost);
}

class _ArticlePageScreenState extends State<ArticlePageScreen> {
  final viewModel = ArticleViewModel(RandomArticleRepository());

  @override
  void initState() {
    super.initState();
    viewModel.fetchArticle();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Wikipedia")),
      body: Center(
        child: ListenableBuilder(
          listenable: viewModel,
          builder: (context, _) {
            return switch ((viewModel.isLoading, viewModel.summary, viewModel.error)) {
              (true, _, _) => CircularProgressIndicator(),
              (_, _, Exception e) => Text('Error: $e'),
              (_, Summary summary?, _) => ArticlePage(summary: summary, nextArticle: viewModel.fetchArticle),
              _ => Text("Something went wrong"),
            };
          }
        ),
      ),
    );
  }
}