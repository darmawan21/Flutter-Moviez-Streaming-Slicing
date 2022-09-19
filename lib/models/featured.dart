import 'package:flutter/cupertino.dart';

class Featured {
  int id;
  String name;
  String category;
  String imageUrl;
  double rating;
  Color color;


  Featured(
      {required this.id,
      required this.name,
      required this.imageUrl,
      required this.category,
      required this.rating,
      required this.color,});
}
