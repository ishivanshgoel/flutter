import 'package:flutter/material.dart';
import 'card.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/api_service.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  ApiService client = ApiService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            children: const <Widget>[
              Text("Flutter News App"),
            ],
          ),
        ),
        body: FutureBuilder(
            future: client.getArticle(),
            builder:
                (BuildContext context, AsyncSnapshot<List<Article>> snapshot) {
              if (snapshot.hasData) {
                List<Article> articles = snapshot.data ?? [];
                return ListView.builder(
                    itemCount: articles.length,
                    itemBuilder: (context, index) {
                      return NewsCard(
                        title: articles[index].title,
                        author: articles[index].author,
                        image: articles[index].urlToImage,
                      );
                    });
              }

              return Center(child: CircularProgressIndicator());
            }));
  }
}
