import 'package:balta/components/article-grid.widget.dart';
import 'package:balta/models/article-card.model.dart';
import 'package:balta/repositories/article.repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:balta/globals.dart' as globals;

class HomePage extends StatelessWidget {
  final repository = new ArticleRepository();

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("balta.io"),
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            globals.COLS = 1;
          } else if (constraints.maxWidth < 800 && constraints.maxWidth > 600) {
            globals.COLS = 2;
          } else {
            globals.COLS = 3;
          }

          return FutureBuilder<List<ArticleCardModel>>(
            future: repository.getAll(),
            builder: (context, snapshot) {
              switch (snapshot.connectionState) {
                case ConnectionState.none:
                  return Center(
                    child: Text('Aguardando...'),
                  );
                case ConnectionState.active:
                case ConnectionState.waiting:
                  return Center(
                    child: CupertinoActivityIndicator(),
                  );
                case ConnectionState.done:
                  if (snapshot.hasError)
                    return Center(
                      child: Text("Não foi possível ler os artigos"),
                    );

                  List<ArticleCardModel> articles = snapshot.data;
                  return ArticleGrid(
                    items: articles,
                  );
              }
              return Center(
                child: Text("Carregando..."),
              );
            },
          );
        },
      ),
    );
  }
}
