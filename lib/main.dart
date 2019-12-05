import 'package:flutter/material.dart';
import 'package:your_environment/articleList.dart';
import 'package:your_environment/slovar.dart';
import 'guideList.dart';
import 'package:cached_network_image/cached_network_image.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

PageController _pageController;

List titles = ["Обустройство двора", "Вовлечение", "Словарь"];
var title = 0;

class _MyAppState extends State<MyApp> {
  void navigationTapped(int page) {
    _pageController.jumpToPage(page);
    setState(() {
      title = page;
    });
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  void onPageChanged(int page) {
    setState(() {
      title = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text(titles[title]),
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                child: Container(),
                margin: EdgeInsets.only(bottom: 0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: CachedNetworkImageProvider(
                        "https://sun9-46.userapi.com/c856120/v856120793/189f10/hMRl14w-LAQ.jpg"),
                  ),
                ),
              ),
              CustomListTile(Icons.book, titles[0], () {}, 0),
              CustomListTile(Icons.library_books, titles[1], () {}, 1),
              CustomListTile(Icons.format_list_bulleted, titles[2], () {}, 2),
            ],
          ),
        ),
        body: PageView(
          physics: NeverScrollableScrollPhysics(),
          controller: _pageController,
          onPageChanged: onPageChanged,
          children: <Widget>[GuideListView(), ArticleListView(), Slovar()],
        ),
      ),
    );
  }
}

class CustomListTile extends StatefulWidget {
  final IconData icon;
  final int index;
  final String text;
  final Function ontap;
  CustomListTile(
    this.icon,
    this.text,
    this.ontap,
    this.index,
  );

  @override
  _CustomListTileState createState() => _CustomListTileState();
}

class _CustomListTileState extends State<CustomListTile> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.pink,
      onTap: () {
        _pageController.jumpToPage(widget.index);
        Navigator.pop(context);
      },
      child: Container(
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.grey))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(7.0),
              child: Row(
                children: <Widget>[
                  Icon(
                    widget.icon,
                    size: 48,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      widget.text,
                      style: TextStyle(fontSize: 19),
                    ),
                  )
                ],
              ),
            ),
            Icon(
              Icons.arrow_right,
              size: 48,
            )
          ],
        ),
      ),
    );
  }
}
