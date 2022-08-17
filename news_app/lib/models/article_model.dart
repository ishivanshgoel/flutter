class Article {
  String author;
  String title;
  String description;
  String url;
  String urlToImage;
  String publishedAt;
  String content;
  Article(
      {this.author = "",
      this.title = "",
      this.description = "",
      this.url = "",
      this.urlToImage = "",
      this.publishedAt = "",
      this.content = ""});
  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
      author: json['author'] ?? "N/A",
      title: json['title'] ?? "N/A",
      description: json['description'] ?? "N/A",
      url: json['url'] ?? "N/A",
      urlToImage: json['urlToImage'] ??
          "https://miro.medium.com/max/1400/1*-eWNNIucwl_KSA-KXU2_iQ.jpeg",
      publishedAt: json['publishedAt'] ?? "N/A",
      content: json['content'] ?? "N/A",
    );
  }
}
