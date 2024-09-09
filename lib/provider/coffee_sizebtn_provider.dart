import 'package:flutter_riverpod/flutter_riverpod.dart';

class CoffeeSizeNotifier extends StateNotifier<String>{
  CoffeeSizeNotifier() : super('M');


  void selectSize(String newSize) {
    state = newSize;
  }
}

final sizeProvider = StateNotifierProvider<CoffeeSizeNotifier,String>((ref) => 
CoffeeSizeNotifier());