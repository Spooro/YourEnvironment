import 'package:flutter/material.dart';
import 'package:your_environment/data.dart';
import 'package:your_environment/slovar_card.dart';

class Slovar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(itemCount: slovarnieList.length, separatorBuilder: (context, index) {
          return SizedBox(height: 10);
        },itemBuilder: (BuildContext context, int index) {
          return SlovarnoeCard(slovarnieList[index]);
        });
  }
}
