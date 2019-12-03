import 'package:flutter/material.dart';
import 'package:your_environment/ListViewCard.dart';
import 'data.dart';

class ArticleListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemCount: articleList.length,
        separatorBuilder: (context, index) {
          return SizedBox(height: 10);
        },
        itemBuilder: (BuildContext context, int index) {
          return ListViewCard(articleList[index]);
        });
  }
}

class ArticleScreen extends StatelessWidget {
  ArticleScreen(this.article);
  final Article article;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(article.name),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text("название: " + article.name),
            Text("описание:" + article.overview),
            Text("бади:" + article.body),
          ],
          mainAxisSize: MainAxisSize.min,
        ),
      ),
    );
  }
}
