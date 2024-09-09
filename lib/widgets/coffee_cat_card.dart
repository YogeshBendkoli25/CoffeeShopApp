import 'package:coffeshop/models/coffee.dart';
import 'package:coffeshop/provider/coffee_cate_provider.dart';
import 'package:coffeshop/provider/coffee_list_provider.dart';
import 'package:coffeshop/screens/coffee_detail_screen.dart';
import 'package:coffeshop/widgets/coffee_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CoffeeCategoryCard extends ConsumerWidget {
  const CoffeeCategoryCard({
    super.key,
    });

  void _onSelectCoffee(BuildContext context,Coffee coffee){
      Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => CoffeeDetailScreen(coffee: coffee)));
  }


  @override
  Widget build(BuildContext context,WidgetRef ref) {

    final coffeeData = ref.read(coffeeDataProvider);
    final coffees = ref.watch(coffeeListProvider);


    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)),
        elevation: 5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox( 
              //  color: Colors.amber,
                height: MediaQuery.of(context).size.height * 0.35, // Adjust based on available space
                width: MediaQuery.of(context).size.width,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      // Use a GridView.builder inside the Column to allow vertical scrolling
                      GridView.builder(
                        padding: EdgeInsets.zero,
                        physics:
                            const NeverScrollableScrollPhysics(), // Disable GridView scrolling to allow SingleChildScrollView to handle it
                        shrinkWrap: true,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 5,
                          crossAxisSpacing: 5,
                          childAspectRatio: 4 / 6,
                        ),
                        itemCount: coffeeData.length,
                        itemBuilder: (context, index) {
                          return CoffeeItem(
                           coffee: coffees[index],
                            onSelectCoffee: (coffee) {
                              _onSelectCoffee(context, coffee);
                            },
                          );
                        },

                      ),

                      
                    ],
                  ),
                ),
              ),  
        ],),
      );
    
  }
}