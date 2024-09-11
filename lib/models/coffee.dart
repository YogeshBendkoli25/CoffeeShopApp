

import 'package:flutter/material.dart';




class Coffee{
  const Coffee({
     required this.id,
     required this.image,
     required this.title,
     required this.subtitle,
     required this.price,
     this.category,
  });

 final String id;
 final Image image;
 final String title;
 final String subtitle;
 final String price;
 final String? category;
}

