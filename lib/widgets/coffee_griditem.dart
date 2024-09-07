import 'package:coffeshop/models/coffee.dart';
import 'package:flutter/material.dart';

class CoffeeGriditem extends StatelessWidget{
  const CoffeeGriditem({super.key,
  required this.coffee,
  required this.onSelectCoffee,
});

  final Coffee coffee;
  final void Function() onSelectCoffee;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},//onSelectCategory,
      splashColor: Theme.of(context).primaryColor, // visual tapping effect
      borderRadius: BorderRadius.circular(16),  
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          
        ),
        child: Text(coffee.title,
        ),),
      );
    
  }
}