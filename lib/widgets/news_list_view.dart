import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/widgets/news_card.dart';

class NewsTileListView extends StatelessWidget {

  final List<ArticleModel> articles ;

const NewsTileListView({super.key, required this.articles});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: articles.length,
      itemBuilder: (BuildContext context, int index) {
        return  Padding(
          padding: const EdgeInsets.only(bottom: 22),
          child: NewsTileCard(
            articleModel: articles[index],
          ),
        ) ;
      },
    );
  }
}
