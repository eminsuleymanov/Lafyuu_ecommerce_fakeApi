import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CategoryModel {
  final IconData icon;
  final String categoryName;

  CategoryModel({
    required this.icon,
    required this.categoryName,
  });
  static final List<CategoryModel> items = [
    CategoryModel(
      icon: FontAwesomeIcons.shirt,
      categoryName: "Man",
    ),
    CategoryModel(
      icon: FontAwesomeIcons.personDress,
      categoryName: "Dress",
    ),
    CategoryModel(
      icon: FontAwesomeIcons.suitcase,
      categoryName: "Man",
    ),
    CategoryModel(
      icon: FontAwesomeIcons.shirt,
      categoryName: "Man",
    ),CategoryModel(
      icon: FontAwesomeIcons.shirt,
      categoryName: "Man",
    ),CategoryModel(
      icon: FontAwesomeIcons.shirt,
      categoryName: "Man",
    ),
  ];
}
