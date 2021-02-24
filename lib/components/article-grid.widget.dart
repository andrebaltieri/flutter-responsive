import 'package:balta/models/article-card.model.dart';
import 'package:flutter/cupertino.dart';
import 'package:balta/globals.dart' as globals;
import 'package:balta/components/article-card.widget.dart';

class ArticleGrid extends StatelessWidget {
  final List<ArticleCardModel> items;

  ArticleGrid({@required this.items});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: globals.COLS,
      childAspectRatio: 2 / 1,
      children: List.generate(
        items.length ?? 0,
        (index) {
          return ArticleCard(item: items[index]);
        },
      ),
    );
  }
}
