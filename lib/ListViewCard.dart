import 'package:flutter/material.dart';
import 'package:your_environment/guideList.dart';

import 'articleList.dart';
import 'data.dart';

class ListViewCard extends StatelessWidget {
  ListViewCard(this.page);

  final page;
  @override
  Widget build(BuildContext context) {
    return Card(
    
      semanticContainer: true,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: InkWell(
        
        onTap: () {
          // тап на карточку
          page is Guide
              ? Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => GuideScreen(page),
                ))
              : Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => ArticleScreen(page)),
                );
        },
        child: Container(
          height: 140,
          width: 185,
          child: Hero(
            tag: page.name,
            child: Stack(
              fit: StackFit.expand,
              children: <Widget>[
                page is Guide?
                Image(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    page.picture,
                  ),
                ):Container(),
                Positioned(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        page.name,
                        style: Theme.of(context).textTheme.title.copyWith(
                              fontSize: 40,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                      Text(
                        page.overview,
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
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 5,
      margin: EdgeInsets.all(10),
    );
  }
}

// return Row(
//   children: <Widget>[
//     Expanded(
//       flex: 3,
//       child: Container(),
//     ),
//     Expanded(
//       flex: 33,
//       child: Padding(
//         padding: const EdgeInsets.only(top: 15),
//         child: Material(
//           color: Colors.blueGrey,
//           elevation: 10,
//           borderRadius: BorderRadius.circular(30),
//           child: Hero(
//             tag: page.name,
//             child: Container(
//               decoration: BoxDecoration(
//                   image: DecorationImage(
//                       image: NetworkImage(
//                         page.picture,
//                       ),
//                       fit: BoxFit.cover),
//                   borderRadius: BorderRadius.circular(30)),
//               child: InkWell(
//                 onTap: () {
//                   // тап на карточку
//                   page is Guide
//                       ? Navigator.of(context).push(MaterialPageRoute(
//                           builder: (context) => GuideScreen(page),
//                         ))
//                       : Navigator.of(context).push(
//                           MaterialPageRoute(
//                               builder: (context) => ArticleScreen(page)),
//                         );
//                 },
//                 splashColor: Colors.white,
//                 borderRadius: BorderRadius.circular(30),
//                 child: Container(
//                     height: 120,
//                     child: Row(
//                       children: <Widget>[
//                         //текст слева
//                         Expanded(
//                           flex: 3,
//                           child: Container(),
//                         ),
//                         //сам текст ширина
//                         Expanded(
//                           flex: 8,
//                           child: Column(
//                             children: <Widget>[
//                               //текст сверху
//                               Expanded(
//                                 flex: 1,
//                                 child: Container(),
//                               ),
//                               //текст высота
//                               Expanded(
//                                 flex: 5,
//                                 child: Container(
//                                   // color: Colors.amber,
//                                   child: Align(
//                                       alignment: Alignment.topRight,
//                                       child: Column(
//                                         crossAxisAlignment:
//                                             CrossAxisAlignment.end,
//                                         mainAxisAlignment:
//                                             MainAxisAlignment.start,
//                                         children: <Widget>[
//                                           Text(
//                                             page.name,
//                                             textAlign: TextAlign.end,
//                                             style: TextStyle(
//                                                 fontSize: 25,
//                                                 color: Colors.black),
//                                           ),
//                                           Text(
//                                             page.overview,
//                                             textAlign: TextAlign.end,
//                                             style: TextStyle(
//                                                 fontSize: 18,
//                                                 color: Colors.black),
//                                           ),
//                                         ],
//                                       )),
//                                 ),
//                               ),
//                               //текст снизу
//                               Expanded(
//                                 flex: 1,
//                                 child: Container(),
//                               ),
//                             ],
//                           ),
//                         ),
//                         //текст справа
//                         Expanded(
//                           flex: 1,
//                           child: Container(),
//                         ),
//                       ],
//                     )),
//               ),
//             ),
//           ),
//         ),
//       ),
//     ),
//     Expanded(
//       flex: 3,
//       child: Container(),
//     )
//   ],
// );
