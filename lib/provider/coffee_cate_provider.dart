import 'package:coffeshop/dummy_data/coffee_cate_data.dart';
import 'package:coffeshop/dummy_data/coffees_itemdata.dart';
  import 'package:flutter_riverpod/flutter_riverpod.dart';



class CoffeeCateProviderNotifier extends StateNotifier<List<String>> {

  CoffeeCateProviderNotifier() :super(availableCoffeeCategories.toList());
}



final coffeeCategoryProvider = 
StateNotifierProvider<CoffeeCateProviderNotifier,List<String>>((ref) {
  return CoffeeCateProviderNotifier();
});


 final coffeeDataProvider = Provider((ref) => avaliableCoffees);



 final coffeeFilterProvider = StateProvider<String>((ref) => 'AllCoffee');

