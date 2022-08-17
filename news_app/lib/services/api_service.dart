import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:news_app/models/article_model.dart';

class ApiService {
  final endPointUrl = "newsapi.org";
  final client = http.Client();
  Future<List<Article>> getArticle() async {
    final queryParameters = {
      'country': 'us',
      'category': 'business',
      'apiKey': '0f605afc052e4a24b98e6f924c68aaad'
    };
    final uri = Uri.https(endPointUrl, '/v2/top-headlines', queryParameters);
    final response = await client.get(uri);
    Map<String, dynamic> json = jsonDecode(response.body);
    List<dynamic> body = json['articles'];
    List<Article> articles =
        body.map((dynamic item) => Article.fromJson(item)).toList();
    return articles;
  }
}
