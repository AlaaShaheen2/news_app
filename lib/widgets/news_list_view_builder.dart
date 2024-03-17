
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/widgets/news_list_view.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({
    super.key, required this.category,
  }); 
  final String category;

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var future;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    future = NewsService(Dio()).getNews(category: widget.category) ;
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder <List<ArticleModel>>(
      future: future,
    
     builder: (context,snapshot) {
if (snapshot.hasData) {
  return NewsTileListView(
              articles: snapshot.data!,
            );
}
else if (snapshot.hasError){
return Text('OOPs there was an error');
}
else {
return Container(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
}
     },
     );

  }
}
