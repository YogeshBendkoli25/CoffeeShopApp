import 'package:coffeshop/models/coffee.dart';
import 'package:flutter/material.dart';

final avaliableCoffees = [
  Coffee(
    id: 'c1',
    image: Image.asset('assets/images/svg/CaffeMocha.png'),
    title: 'Caffe Mocha',
    subtitile: 'Ice/Hot',
    price: '₹ 150',
    
  ),
  Coffee(
    id: 'c2',
    image: Image.asset('assets/images/svg/FlatWhite.png'),
    title: 'Flat White',
    subtitile: 'Esspresso',
    price: '₹ 200',
  ),
  Coffee(
    id: 'c3',
    image: Image.asset('assets/images/svg/MochaFusi.png'),
    title: 'Mocha Fusi',
    subtitile: 'Ice/Hot',
    price: '₹ 100',
  ),
  Coffee(
    id: 'c4',
    image: Image.asset('assets/images/svg/CaffePanna.png'),
    title: 'Caffee Panna',
    subtitile: 'Ice/Hot',
    price: '₹ 250',
  ),
];
