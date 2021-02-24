import 'package:flutter/cupertino.dart';
import 'package:balta/globals.dart' as globals;

class DetailsPage extends StatelessWidget {
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

          return Text("Details page");
        },
      ),
    );
  }
}
