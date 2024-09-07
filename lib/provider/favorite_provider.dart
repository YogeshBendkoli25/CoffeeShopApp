

import 'package:coffeshop/models/coffee.dart';
import 'package:coffeshop/screens/coffee_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FavoriteCoffeeNotifier extends StateNotifier<List<Coffee>>{
  FavoriteCoffeeNotifier() : super([]);


  bool toggleCoffeeFavoriteStatus(Coffee coffee){
    final coffeeIsFavorite = state.contains(coffee);

    if(coffeeIsFavorite){
      state = state.where((c) => c.id != coffee.id).toList();
      return false;
    }
    else{
      state = [...state,coffee];
      return true;
    }
  }
}


final favoriteCoffeeProvider = StateNotifierProvider<FavoriteCoffeeNotifier,List<Coffee>>((ref) {
  return FavoriteCoffeeNotifier();
});

class FavoriteCoffeeController extends StateNotifier{
  FavoriteCoffeeController() :super([]);
  

    void selectCoffee(BuildContext context,Coffee coffee) {
      Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => CoffeeDetailScreen(coffee: coffee)));
    }
}