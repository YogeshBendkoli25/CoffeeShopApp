

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

enum Category {
  allCoffee,
  macchiato,
  latte,
  americano,
  cappuccino,
  espresso,
}


class Coffee{
  const Coffee({
     required this.id,
     required this.image,
     required this.title,
     required this.subtitile,
     required this.price,
     this.category,
  });

 final String id;
 final Image image;
 final String title;
 final String subtitile;
 final String price;
 final Category? category;

@override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Coffee &&
      other.title == title &&
      other.subtitile == subtitile &&
      other.price == price;
  }

  @override
  int get hashCode => title.hashCode ^ subtitile.hashCode ^ price.hashCode;
}

