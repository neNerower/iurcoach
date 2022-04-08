import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../news.dart';
import 'news_view.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<NewsBloc>(
      create: (_) => NewsBloc()..add(NewsFetched()),
      child: NewsView(),
    );
  }
}
