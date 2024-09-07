import 'package:coffeshop/models/coffee.dart';
import 'package:coffeshop/provider/button_col_chnge.dart';
import 'package:coffeshop/provider/favorite_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';



class CoffeeDetailScreen extends ConsumerWidget{
  const CoffeeDetailScreen({
    super.key,
    required this.coffee,
  });

  final Coffee coffee;

  @override
  Widget build(BuildContext context,WidgetRef ref) {

    final favoriteCoffee = ref.watch(favoriteCoffeeProvider);

    final isFavorite = favoriteCoffee.contains(coffee);

    var coffeeSize = "M";
    final buttonColor = ref.watch(buttonColorProvider);
  
    return Scaffold(
        appBar: AppBar(
        title : Text(coffee.title), actions: [
            IconButton(
                onPressed: () {
                  final wasAdded = ref.read(favoriteCoffeeProvider.notifier)
                   .toggleCoffeeFavoriteStatus(coffee);
                  ScaffoldMessenger.of(context).clearSnackBars();
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text(wasAdded
                          ? 'Coffee added as favorite'
                          : 'Coffee removed.')));
                },
                icon: AnimatedSwitcher(
                  duration: Duration(milliseconds: 300),
                  child: 
                   Image.asset('assets/images/favourite.png',
                      key: ValueKey<bool>(isFavorite),
                      height: 24,
                      width: 30,
                  ),
                )),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  margin: const EdgeInsets.only(left: 1, right: 1, top: 3,bottom: 3),
                  width: 360,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        fit: BoxFit.fill, image: coffee.image.image),
                  )),
              const SizedBox(height: 18),
              
              /// Title Coffee
              Text(
                  style: GoogleFonts.sora(
                      fontSize: 20, fontWeight: FontWeight.bold),
                  coffee.title),
              const SizedBox(height: 5),
            
              /// Subtitle
              Row(
                children: [
                  Text(
                    coffee.subtitile.toString(),
                    style: GoogleFonts.sora(fontSize: 15, color: Colors.grey),
                  ),

                const SizedBox(width: 135),
                Row(children: [
                  Container(
                    width: 45,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color:const  Color.fromARGB(235, 246, 244, 244),
                      borderRadius: BorderRadius.circular(5)
                      ),
                    child: Image.asset('assets/images/FastDelivery.png'),
                  ),
                  const SizedBox(width: 5),
                  Container(
                    width: 45,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color:const Color.fromARGB(235, 246, 244, 244),
                      borderRadius: BorderRadius.circular(5)
                      ),
                    child: Image.asset('assets/images/Quality.png'),
                  ),

                  const SizedBox(width: 5),

                  Container(
                    width: 45,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: const Color.fromARGB(235, 246, 244, 244),
                      borderRadius: BorderRadius.circular(5)
                      ),
                    child: Image.asset('assets/images/ExtraMilk.png'),
                  ),
                ],)
                
                

                
                ],
              ),
              const SizedBox(height: 5),
              Row(
                children: [
                
                  SvgPicture.asset('assets/images/starstar.svg'),
                  const SizedBox(width: 5),
                  Text('4.8',style: GoogleFonts.sora(fontSize: 18,fontWeight: FontWeight.bold),),
                  const SizedBox(width: 5),
                  Text('(420)',style: GoogleFonts.sora(color: Colors.grey),)
                ],
              ),
              const Padding(
                padding:  EdgeInsets.only(left: 18,right: 20,top: 10),
                child: Divider(
                  thickness: 1,
                  color: Color.fromARGB(255, 220, 218, 218),),
              ),

              Text('Description',
              style: GoogleFonts.sora(fontSize: 17,fontWeight: FontWeight.bold) ,),

              Text('A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the ',style: GoogleFonts.sora(),),
            
              const SizedBox(height: 30,),
              Text('Size',style: GoogleFonts.sora(fontSize: 17,fontWeight: FontWeight.bold),),
            
            const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                InkWell( 
                  onTap: (){
                    
                  },
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  child: Container(
                    alignment: Alignment.center,
                    width: 110,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: coffeeSize =="S"?Colors.orange : Colors.grey.shade400)),
                    child: const Text('S'),
                  ),
                ),

                 InkWell(
                  onTap: (){},
                   child: Container(
                    alignment: Alignment.center,
                    width: 110,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(15),  
                     border: Border.all(color: coffeeSize =="M"?Color.fromARGB(166, 186, 120, 21): Colors.grey.shade400)),
                    child: const Text('M'),
                                   ),
                 ),
                 InkWell(
                  onTap: (){
                    buttonColor == Colors.white ? Colors.orange : Colors.white;
                  },
                   child: Container(
                    alignment: Alignment.center,
                    width: 110,
                    height: 50,
                    decoration: BoxDecoration(
                    //  color: Colors.white24,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.grey.shade400)                  ),
                    child: const Text('L'),
                                   ),
                 )
              ],)
            ],
          ),
        ),

        ///   Bottom App Bar
        bottomNavigationBar: BottomAppBar(
          height: 100,
          shape: const CircularNotchedRectangle(),
          notchMargin: 0.5,
         // child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 5, 17, 0),
                        child: Text('Price ',
                            style: GoogleFonts.sora(
                                color: Colors.black45, fontSize: 16)),
                      ),
                      const SizedBox(
                        height: 1,
                      ),
                       Text(
                        //'\$ 5.43',
                        coffee.price,
                        style: const TextStyle(
                            fontSize: 22,
                            color: Color(0xFFBC7F56),
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                const SizedBox(width: 60),
                TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 70),
                        foregroundColor: Colors.white,
                        backgroundColor: const Color(0xFFBC7F56),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        )),
                    child: Text(
                      'Buy Now',
                      style: GoogleFonts.sora(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ))
              ],
            ),
          ),
    //)
        );
  }
}

