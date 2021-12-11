import 'package:dio/dio.dart';
import 'package:ingressos/models/news_response.dart';

class NewsApiServices {
  static String _apiKey = "6a4852cd47a84beaa6782682c38b3d63";
  String _url =
      "https://newsapi.org/v2/everything?q=tesla&from=2021-11-11&sortBy=publishedAt&apiKey=$_apiKey";

  late Dio _dio;

  NewsApiServices() {
    _dio = Dio();
  }

  Future<List<Article>> fetchNewsArticle() async {
    try {
      Response response = await _dio.get(_url);
      NewsResponse newsResponse = NewsResponse.fromJson(response.data);
      return newsResponse.articles;
    } on DioError catch (e) {
      print(e);
      rethrow;
    }
  }
}
