

import 'package:coffeshop/models/coffee.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FavoriteCoffeeNotifier extends StateNotifier<List<Coffee>>{
  FavoriteCoffeeNotifier() : super([]);


  bool toggleCoffeeFavoriteStatus(Coffee coffee){
   // final coffeeIsFavorite = state.contains(coffee);

   
   if(state.contains(coffee)) {
    state = state.where((c) => c !=coffee).toList();
    return false;
   } else {
    state = [...state,coffee];
    return true;
   }
  }
}


final favoriteCoffeeProvider = StateNotifierProvider<FavoriteCoffeeNotifier,List<Coffee>>((ref) {
  return FavoriteCoffeeNotifier();
});



