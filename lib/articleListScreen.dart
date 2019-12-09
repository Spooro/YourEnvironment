import 'package:cached_network_image/cached_network_image.dart';
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
      body: ListView(
        children: <Widget>[
          Container(
            height: 200,
            child: Hero(
              tag: article.name,
              child: Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  CachedNetworkImage(
                    errorWidget: (context, url, error) => Icon(Icons.error),
                    imageUrl: article.picture,
                    fit: BoxFit.cover,
                    placeholder: (context, url) => Container(
                      child: Center(
                        child: CircularProgressIndicator(),
                      ),
                    ),
                  ),
                  Positioned(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          article.name,
                          style: Theme.of(context).textTheme.title.copyWith(
                                fontSize: 40,
                                fontWeight: FontWeight.normal,
                                color: Colors.black
                              ),
                        ),
                        Text(
                          article.overview,
                          style: Theme.of(context).textTheme.title.copyWith(
                                fontSize: 20,
                                fontWeight: FontWeight.normal,
                                color: Colors.black
                              ),
                        ),
                      ],
                    ),
                    bottom: 20,
                    left: 20,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 17, left: 10, right: 10),
            child: Text(article.body, style: TextStyle(fontSize: 20),),
          )
        ],
      ),
    );
  }
}

