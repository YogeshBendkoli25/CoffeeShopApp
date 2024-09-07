import 'package:coffeshop/models/coffee.dart';
import 'package:coffeshop/screens/coffee_detail_screen.dart';
import 'package:coffeshop/widgets/coffee_item.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FavouriteCoffe extends StatelessWidget {
  const FavouriteCoffe({
    super.key,
    this.title,
    required this.coffee,
    });
  
    final String? title;
    final List<Coffee> coffee;

    void selectCoffee(BuildContext context,Coffee coffee){
      Navigator.of(context).push(MaterialPageRoute(builder: (ctx) =>
       CoffeeDetailScreen(coffee: coffee)));
    }
   
  @override
  Widget build(BuildContext context) {
    
    // Widget content = Center(
    //     child: Column(
    //     mainAxisSize: MainAxisSize.min,
    //     children: [
          
    //       Text(
    //         'Uh oh ... nothing here!',
    //         style: GoogleFonts.sora(
    //           fontSize: 30
    //         ),
    //       ),
    //       const SizedBox(height: 16),
    //       Text(
    //         'Try selecting a different category!',
    //         style: GoogleFonts.sora(
    //           fontSize: 18
    //         ),
    //       ),
    //     ],
    //   ),
    // );

    // if(title == null) {
    //   return content;
    // }

    // if(coffee.isNotEmpty) {
    //    ListView.builder(
    //     itemCount: coffee.length,
    //     itemBuilder: (ctx,index) => CoffeeItem(
    //       coffee: coffee[index],
    //        onSelectCoffee: (coffee){
    //         selectCoffee(context, coffee);
    //        })
        
    //     );
    // }


    return Scaffold(
      appBar: AppBar(
        title: Text(title??''),),
      
      body:  //content
      ListView.builder(
        itemCount: coffee.length,
        itemBuilder: (ctx,index) => CoffeeItem(
          coffee: coffee[index],
           onSelectCoffee: (coffee){
            selectCoffee(context, coffee);
           })
        
        )
    );
  }
}