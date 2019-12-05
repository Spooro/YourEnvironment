import 'package:flutter/material.dart';
import 'package:your_environment/ListViewCard.dart';
import 'data.dart';
import 'package:cached_network_image/cached_network_image.dart';

class GuideListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemCount: guideList.length,
        separatorBuilder: (context, index) {
          return SizedBox(height: 10);
        },
        itemBuilder: (BuildContext context, int index) {
          return ListViewCard(guideList[index]);
        });
  }
}

class GuideScreen extends StatelessWidget {
  GuideScreen(this.guide);
  final Guide guide;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(guide.name),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 200,
            child: Hero(
              tag: guide.name,
              child: Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  CachedNetworkImage(
                    errorWidget: (context, url, error) => Icon(Icons.error),
                    imageUrl: guide.picture,
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
                          guide.name,
                          style: Theme.of(context).textTheme.title.copyWith(
                                fontSize: 40,
                                fontWeight: FontWeight.normal,
                              ),
                        ),
                        Text(
                          guide.overview,
                          style: Theme.of(context).textTheme.title.copyWith(
                                fontSize: 20,
                                fontWeight: FontWeight.normal,
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
            child: Text(guide.body, style: TextStyle(fontSize: 20),),
          )
        ],
      ),
    );
  }
}
