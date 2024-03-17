
import 'package:flutter/material.dart';

import 'package:news_app/widgets/categories_list_view.dart';

import '../widgets/news_list_view_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('News'),
              Text(
                'Cloud',
                style: TextStyle(color: Colors.orange),
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const CategoriesListView(),
              SizedBox(
                height: 32,
              ),
              Expanded(child: NewsListViewBuilder(
                category: 'general',
              ))
            ],
          ),
        ));
  }
}
