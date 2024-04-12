import 'package:flutter/material.dart';

class CategoryModel {
  final String name;
  final Image image;

  CategoryModel({
    required this.name,
    required this.image,
  });
}

//data
List categoryData = [
  CategoryModel(
      name: "Vegetables", image: Image.asset("assets/images/cat1.png")),
  CategoryModel(name: "Fruits", image: Image.asset("assets/images/cat2.png")),
  CategoryModel(name: "Milk", image: Image.asset("assets/images/cat3.png")),
  CategoryModel(
      name: "Smoothies", image: Image.asset("assets/images/cat4.png")),
  CategoryModel(name: "Bakery", image: Image.asset("assets/images/cat5.png")),
];
