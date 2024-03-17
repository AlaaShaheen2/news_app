import 'package:flutter/material.dart';

import '../widgets/news_list_view_builder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category});
final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('$category'),
      backgroundColor: Colors.orange,
      elevation: 4,
      ),
      body: 
        Padding(
          padding: EdgeInsets.only(top: 10),
          child: NewsListViewBuilder(
            category: category,
          ),
        ),
      
    );
  }
}