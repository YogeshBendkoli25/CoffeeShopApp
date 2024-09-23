import 'package:coffeshop/dummy_data/coffees_itemdata.dart';
import 'package:coffeshop/models/coffee.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SearchBoxNotifier extends StateNotifier<List<Coffee>>{
  SearchBoxNotifier() :super(avaliableCoffees);

  TextEditingController editingController = TextEditingController();


  void searchData(String input) {
    if (input.isEmpty) {
      state = avaliableCoffees; // Reset to all coffees when search input is empty
    } else {
      state = avaliableCoffees.where((coffee) {
        // Search condition: check if the coffee title contains the input string
        return coffee.title.toLowerCase().contains(input.toLowerCase());
      }).toList();
    } 
  }
} 

final searchTextProvider = StateNotifierProvider<SearchBoxNotifier,List<Coffee>>((ref) =>
SearchBoxNotifier()
);



