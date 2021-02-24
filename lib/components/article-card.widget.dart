import 'package:balta/models/article-card.model.dart';
import 'package:balta/pages/details.page.dart';
import 'package:flutter/cupertino.dart';

class ArticleCard extends StatelessWidget {
  final ArticleCardModel item;

  ArticleCard({@required this.item});

  @override
  Widget build(BuildContext context) {
    var url =
        "https://baltaio.blob.core.windows.net/static/images/articles/${item.url}_banner.jpg";

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          CupertinoPageRoute(builder: (context) => DetailsPage()),
        );
      },
      child: Container(
        height: 200,
        padding: EdgeInsets.all(12),
        margin: EdgeInsets.all(6),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xFFFFFFFF).withOpacity(0.03),
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
          image: DecorationImage(
            image: NetworkImage(url),
          ),
        ),
      ),
    );
  }
}
