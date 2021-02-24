class ArticleDetailsModel {
  String title;
  String url;
  int durationInMinutes;
  int level;
  String lastUpdateDate;
  Author author;

  ArticleDetailsModel(
      {this.title,
      this.url,
      this.durationInMinutes,
      this.level,
      this.lastUpdateDate,
      this.author});

  ArticleDetailsModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    url = json['url'];
    durationInMinutes = json['durationInMinutes'];
    level = json['level'];
    lastUpdateDate = json['lastUpdateDate'];
    author =
        json['author'] != null ? new Author.fromJson(json['author']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['url'] = this.url;
    data['durationInMinutes'] = this.durationInMinutes;
    data['level'] = this.level;
    data['lastUpdateDate'] = this.lastUpdateDate;
    if (this.author != null) {
      data['author'] = this.author.toJson();
    }
    return data;
  }
}

class Author {
  String id;
  String name;
  String title;
  String url;
  String image;
  String bio;

  Author({this.id, this.name, this.title, this.url, this.image, this.bio});

  Author.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    title = json['title'];
    url = json['url'];
    image = json['image'];
    bio = json['bio'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['title'] = this.title;
    data['url'] = this.url;
    data['image'] = this.image;
    data['bio'] = this.bio;
    return data;
  }
}
