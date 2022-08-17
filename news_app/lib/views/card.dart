import 'package:flutter/material.dart';

class NewsCard extends StatelessWidget {
  const NewsCard(
      {Key? key,
      required this.title,
      required this.author,
      required this.image})
      : super(key: key);
  final String title;
  final String author;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10.0),
        width: MediaQuery.of(context).size.width,
        child: Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Image.network(
                image,
                errorBuilder: (BuildContext context, Object exception,
                    StackTrace? stackTrace) {
                  return Image.network(
                      "https://miro.medium.com/max/1400/1*-eWNNIucwl_KSA-KXU2_iQ.jpeg");
                },
              ),
              ListTile(
                title: Text(
                  title,
                  style: const TextStyle(fontSize: 20.0),
                ),
                subtitle: Text("Author: $author"),
                isThreeLine: true,
              )
            ],
          ),
        ));
  }
}
