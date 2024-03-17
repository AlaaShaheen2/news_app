class ArticleModel {
  final String? articleImage;
  final String aticleTitle;
  final String? articleSubTitle;

  ArticleModel({required this.articleImage, required this.aticleTitle, required this.articleSubTitle});

factory ArticleModel.fromJson(json) {
 return ArticleModel(
      articleImage: json['urlToImage'],
      aticleTitle: json['title'],
      articleSubTitle: json['description'],
    );

}
 }
