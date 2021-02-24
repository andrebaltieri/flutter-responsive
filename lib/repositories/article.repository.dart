import 'package:balta/models/article-details.model.dart';
import 'package:balta/models/article-card.model.dart';
import 'package:dio/dio.dart';

class ArticleRepository {
  Future<List<ArticleCardModel>> getAll() async {
    var url = "https://api.balta.io/v1/articles";
    Response response = await Dio().get(url);

    return (response.data["data"] as List)
        .map((item) => ArticleCardModel.fromJson(item))
        .toList();
  }

  Future<ArticleDetailsModel> getByUrl(String url) async {
    var apiUrl = "https://api.balta.io/v1/articles/$url";
    Response response = await Dio().get(apiUrl);

    return response.data["data"]
        .map((item) => ArticleDetailsModel.fromJson(item));
  }
}
