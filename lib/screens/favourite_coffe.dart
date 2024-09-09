import 'package:coffeshop/models/coffee.dart';
import 'package:coffeshop/provider/favorite_provider.dart';
import 'package:coffeshop/screens/coffee_detail_screen.dart';
import 'package:coffeshop/widgets/favorite_coffee_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

class FavouriteCoffe extends ConsumerWidget {
  const FavouriteCoffe({
    super.key,
    this.title,
    required this.coffee,
  });

  final String? title;
  final List<Coffee> coffee;

  void selectCoffee(BuildContext context, Coffee coffee) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (ctx) => CoffeeDetailScreen(coffee: coffee)));
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Watching the favorite coffee list
    final favouriteCoffee = ref.watch(favoriteCoffeeProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text(title ?? 'Favorites'),
      ),
      body:
      
        favouriteCoffee.isEmpty
           ? Center(
               child: Text(
                 'No Favourite item \n             added ❤',
                 style: GoogleFonts.sora(
                  fontWeight: FontWeight.bold, 
                  fontSize: 30
                  ),
               ),
             )
           : 
               ListView.builder(
                itemCount: favouriteCoffee.length,
                itemBuilder: (ctx, index) {
                  final coffee = favouriteCoffee[index];
                  return FavoriteCoffeeItem(      
                    coffee: coffee,
                    onSelectCoffee: (coffee) {
                      selectCoffee(context, coffee);
                    },
                  );
                },
              ),
            
    );
  }
}
