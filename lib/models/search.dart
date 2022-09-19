import 'package:flutter/cupertino.dart';

class Search {
  int id;
  String name;
  String category;
  String imageUrl;
  double rating;
  Color color;

  Search({
    required this.id,
    required this.name,
    required this.category,
    required this.imageUrl,
    required this.rating,
    required this.color,
  });
}