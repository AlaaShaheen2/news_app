import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);

 Future<List<ArticleModel>> getNews({required String category}) async {
    try {
  Response response = await dio.get(
      'https://newsapi.org/v2/top-headlines?country=us&apiKey=a0f944899443473fad1707621241f099&category=$category');
  Map<String, dynamic> jsonData = response.data;
  List<dynamic> articles = jsonData['articles'];
  
  List<ArticleModel> articlesList = [];
  for (var article in articles) {
    ArticleModel articleModel = ArticleModel.fromJson(article);
    articlesList.add(articleModel);
   
  }
  return articlesList;
}  catch (e) {
 return [];
}
  }
}
