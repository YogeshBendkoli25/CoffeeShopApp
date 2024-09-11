import 'package:coffeshop/models/coffee.dart';
import 'package:flutter/material.dart';

final avaliableCoffees = [
  Coffee(
    id: 'c1',
    image: Image.asset('assets/images/svg/CaffeMocha.png'),
    title: 'Caffe Mocha',
    subtitle: 'Ice/Hot',
    price: '₹ 150',
    category: 'Latte'
    
  ),
  Coffee(
    id: 'c2',
    image: Image.asset('assets/images/svg/FlatWhite.png'),
    title: 'Flat White',
    subtitle: 'Esspresso',
    price: '₹ 200',
    category: 'Espresso'
  ),
  Coffee(
    id: 'c3',
    image: Image.asset('assets/images/svg/MochaFusi.png'),
    title: 'Mocha Fusi',
    subtitle: 'Ice/Hot',
    price: '₹ 100',
    category: 'Americano'
  ),
  Coffee(
    id: 'c4',
    image: Image.asset('assets/images/svg/CaffePanna.png'),
    title: 'Caffee Panna',
    subtitle: 'Ice/Hot',
    price: '₹ 250',
    category: 'Latte'
  ),

  Coffee(
    id: 'c5', 
    image: Image.asset('assets/images/svg/Cuppoccino.jpeg'), 
    title: 'Cappuccino', 
    subtitle: 'Cold/Hot', 
    price: '₹ 180',
    category: 'Cappuccino'
  ),

  Coffee(
    id: 'c6', 
    image: Image.asset('assets/images/svg/MacchiatoCoffee.jpeg'), 
    title: 'Mac Caffee', 
    subtitle: 'Cold/Hot', 
    price: '₹ 180',
    category: 'Macchiato'
  )
];
