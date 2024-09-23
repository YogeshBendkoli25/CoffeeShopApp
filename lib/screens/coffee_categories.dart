import 'package:coffeshop/provider/bottom_navbtn_provider.dart';
import 'package:coffeshop/provider/searchbox_provider.dart';
import 'package:coffeshop/screens/favourite_coffe.dart';
import 'package:coffeshop/widgets/coffee_cart.dart';
import 'package:coffeshop/widgets/coffee_cat_card.dart';
import 'package:coffeshop/widgets/coffee_cat_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CoffeeCategories extends ConsumerWidget {
  const CoffeeCategories({
    super.key,
  });
 
  @override
  Widget build(BuildContext context, WidgetRef ref) {


    // Bottom navigation provider.
    var selectTab  = ref.watch(bottomNavigtionProvider);

    final coffeeList = ref.watch(searchTextProvider);

    return Scaffold(
      body: Stack(children: [
        Stack(
          children: [
            Column(
              children: [
                ////   Gradient top Screen
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 320,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Color(0xFF111111), Color(0xFF313131)],
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10),

                      // LOCATION Text.
                      Padding(
                        padding: const EdgeInsets.only(left: 15, top: 70),
                        child: Text('Location',
                            textAlign: TextAlign.left,
                            style: GoogleFonts.sora(
                                color: Colors.white54, fontSize: 15)),
                      ),

                      // LOCATION TEXT.

                      Padding(
                        padding: const EdgeInsets.only(left: 15, top: 1),
                        child: Row(
                          children: [
                            Text(
                              'Nashik,MH ',
                              textAlign: TextAlign.left,
                              style: GoogleFonts.sora(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                            const Icon(
                              Icons.keyboard_arrow_down,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),

                      // SearchBox and Filter Button.
                      Row(
                        children: [
                          const Spacer(),
                          SizedBox(
                              width: 290,
                              height: 60,

                              // SEARCH BOX.
                              child: Container(
                                padding: const EdgeInsets.all(5.0),
                                decoration: BoxDecoration(
                                    gradient: const LinearGradient(
                                      colors: [
                                        Color.fromARGB(255, 47, 47, 47),
                                        Color.fromARGB(255, 36, 36, 36),
                                      ],
                                      begin: Alignment.bottomRight,
                                      end: Alignment.topLeft,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0)),
                                child: TextField(
                                  onTap: (){
                                             
                                  },
                                  onChanged: (value) => ref.read(searchTextProvider.notifier).searchData(value),
                                  decoration: InputDecoration(
                                      prefixIcon: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: SvgPicture.asset(
                                          'assets/images/svg/IconSearch.svg',
                                        ),
                                      ),
                                      filled: true,
                                      fillColor: Colors.transparent,
                                      hintText: 'Search coffee',
                                      hintStyle: const TextStyle(
                                          color: Colors.white54),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                          borderSide: BorderSide.none),
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                              horizontal: 16.0)),
                                  style:
                                      GoogleFonts.sora(color: Colors.white54),
                                ),
                              )),
                          const SizedBox(width: 15),

                          // Filter ELEVATED BUTTON.
                          SizedBox(
                            height: 60,
                            width: 64,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  // backgroundColor: Colors.orange,
                                  backgroundColor: const Color(0xFFC67C4E),
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(18)))),
                              child: SvgPicture.asset(
                                'assets/images/svg/tune.svg',
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),

            ///  Promo Banner
            Positioned(
                top: 250,
                left: 40,
                child: Container(
                    constraints: const BoxConstraints(maxWidth: 320),
                    decoration: BoxDecoration(
                        color: const Color(0xFF8F735B),
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.4),
                              blurRadius: 0.5,
                              spreadRadius: 0.2,
                              offset: const Offset(0, 6)),
                        ],
                        border: Border.all()),
                    child: Image.asset(
                      "assets/images/svg/output.png",
                    ))),

            ///   Promo lable
            Positioned(
              top: 261,
              left: 60,
              child: Container(
                decoration: BoxDecoration(
                    color: const Color(0xFFED5151),
                    borderRadius: BorderRadius.circular(7)),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    'Promo',
                    style: GoogleFonts.sora(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),

            //  Back Shadow strip Buy One Get  1
            Positioned(
              top: 310,
              left: 59,
              child: SizedBox(
                width: 205,
                height: 26,
                child: Container(
                  color: const Color(0xFF353535),
                ),
              ),
            ),

            //  Back Shadow strip One Free 2
            Positioned(
              top: 356,
              left: 59,
              child: SizedBox(
                width: 151,
                height: 20,
                child: Container(
                  color: const Color(0xFF353535),
                ),
              ),
            ),

            //  Buy One Get One Free Text
            Positioned(
              top: 287,
              left: 55,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  decoration: const BoxDecoration(),
                  child: Text(
                    'Buy one get \none FREE',
                    style: GoogleFonts.sora(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        const Stack(
          children: [
            // Horizontal scrolling for coffee categories (AllCoffee, Espresso, etc.)
            Positioned(
              bottom: 298,
              left: 25,
              child: CoffeeCategoryList(),
            ),

            // Vertical scrolling for coffee items
            Positioned(
              bottom: 0,
              // Coffee List
              child: CoffeeCategoryCard(),
           ),
           
          ],
        )
      ]),
    
    

      ///   Bottom Navigation Bar
      bottomNavigationBar: BottomAppBar(
        height: 65,
        shape: const CircularNotchedRectangle(),
        notchMargin: 5.0,
        clipBehavior: Clip.antiAlias,
        child: SizedBox(
          height: kBottomNavigationBarHeight,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              
              //   Home Nav
              IconButton(
                onPressed: () {
                 ref.read(bottomNavigtionProvider.notifier).setIndex(0);
                },
                
                icon: selectTab==0 ?Image.asset('assets/images/homefilled.png'):Image.asset('assets/images/home.png'),
              ),

              // Favourite Nav
              IconButton(
                icon: selectTab == 1 ?  Image.asset('assets/images/favouritefilled.png'): 
                Image.asset('assets/images/favourite.png'),

                onPressed: () {
                ref.read(bottomNavigtionProvider.notifier).setIndex(1);
                 Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => const  FavouriteCoffe(coffee: [],)));
                ref.read(bottomNavigtionProvider.notifier).setIndex(0);
                },
              ),

              // Bag 
              IconButton(
                onPressed: () {
                 Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => CoffeeCart()));
                 ref.read(bottomNavigtionProvider.notifier).setIndex(2);
                },
                icon: selectTab == 2 ? Image.asset('assets/images/bagfilled.png'):
                 Image.asset('assets/images/bag.png'),
              ),

              // Notification
              IconButton(
                onPressed: () {
                 ref.read(bottomNavigtionProvider.notifier).setIndex(3);
                },
                icon: selectTab == 3 ? Image.asset('assets/images/notificationfilled.png'):
                Image.asset('assets/images/notification.png'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


