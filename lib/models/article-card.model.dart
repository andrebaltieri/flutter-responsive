class ArticleCardModel {
  String title;
  String url;
  int durationInMinutes;
  int level;

  ArticleCardModel({this.title, this.url, this.durationInMinutes, this.level});

  ArticleCardModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    url = json['url'];
    durationInMinutes = json['durationInMinutes'];
    level = json['level'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['url'] = this.url;
    data['durationInMinutes'] = this.durationInMinutes;
    data['level'] = this.level;
    return data;
  }
}
