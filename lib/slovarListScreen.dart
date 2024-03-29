import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:your_environment/data.dart';

class SlovarListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: slovarnieList.length,
        itemBuilder: (BuildContext context, int index) {
          return SlovarnoeCard(slovarnieList[index]);
        });
  }
}

class SlovarnoeCard extends StatelessWidget {
  Slovarnoe slovarnoe;
  SlovarnoeCard(@required this.slovarnoe);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return Dialog(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                child: Container(
                  height: 170,
                  width: 290,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    // color: Colors.amber,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Hero(
                                tag: slovarnoe.name,
                                child: Text(
                                  slovarnoe.name,
                                  style: Theme.of(context)
                                      .textTheme
                                      .title
                                      .copyWith(
                                        fontSize: 24,
                                        fontWeight: FontWeight.normal,
                                      ),
                                )), 
                                SizedBox(height: 2,),
                            Text(slovarnoe.definition)
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        },
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Hero(
              tag: slovarnoe.name,
              child: Text(
                slovarnoe.name,
                style: Theme.of(context).textTheme.title.copyWith(
                      fontSize: 30,
                      fontWeight: FontWeight.normal,
                    ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
