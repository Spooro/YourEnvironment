import 'package:flutter/material.dart';
import 'data.dart';
class SlovarnoeCard extends StatelessWidget {
  Slovarnoe slovarnoe;
  SlovarnoeCard(@required this.slovarnoe);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(slovarnoe.name, style: TextStyle(fontSize: 30),),
        ),
      ),
    );
  }
}