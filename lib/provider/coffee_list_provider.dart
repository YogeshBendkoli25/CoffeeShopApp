import 'package:coffeshop/dummy_data/coffees_itemdata.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final coffeeListProvider = Provider((ref){
  return avaliableCoffees;
});


class BottomNavigationNotifier extends StateNotifier<int>{
  BottomNavigationNotifier() : super(0);

    int selectedTab = 0;
    // void changeTab(int index){
    //   state = index;
    // }
    setIndex(index){
      state=index;
    }
}

final bottomNavigtionProvider = StateNotifierProvider<BottomNavigationNotifier,int>((ref) {
  return BottomNavigationNotifier();
});