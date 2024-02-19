import 'package:flutter/material.dart';

class CatProductModel {
  static List<String> catNames = [
    'Persian Cat',
    'Sphinx Cat',
    'Bengal Cat',
    'Abyssinian Cat',
    'Burmese Cat',
    'Russian Blue Cat',
  ];

  static List<int> catPrices = [
    85,
    60,
    90,
    75,
    75,
    60,
  ];

  CatProduct getById(int id) => CatProduct(
      id, catNames[id % catNames.length], catPrices[id % catPrices.length]);

  CatProduct getByPosition(int position) {
    return getById(position);
  }
}

@immutable
class CatProduct {
  final int id;
  final String name;
  final int price;

  const CatProduct(this.id, this.name, this.price);

  @override
  int get hashCode => id;

  @override
  bool operator ==(Object other) => other is CatProduct && other.id == id;
}
