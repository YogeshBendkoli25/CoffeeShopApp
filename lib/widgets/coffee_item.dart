import 'package:coffeshop/models/coffee.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CoffeeItem extends StatelessWidget {
  const CoffeeItem(
      {super.key,
       required this.coffee,
      required this.onSelectCoffee});

  final Coffee coffee;

  final void Function(Coffee coffee) onSelectCoffee;

  @override
  Widget build(BuildContext context) {
    return  Card(
        margin: const EdgeInsets.symmetric(vertical: 5,horizontal: 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        clipBehavior: Clip.hardEdge,
        elevation: 2,
        child: InkWell(
          onTap: () {
            onSelectCoffee(coffee);
          },
          child: Column(
            /// mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                margin: const EdgeInsets.all(10), // Corner circular.
                width: 150,
                height: 130,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(19),
                    image: DecorationImage(image:coffee.image.image,
                    ) 
                    
                  ),
              ),
              
              Expanded(
                child: Column(
                  children: [

                    ///  Title Text
                    SizedBox(
                      width: 130,
                      child: Text(coffee.title,
                          maxLines: 2,
                          textAlign: TextAlign.start,
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.sora(
                          fontSize: 18, fontWeight: FontWeight.bold)),
                    ),
                   const SizedBox(height: 5),

                   // Subtitle Text
                    SizedBox(
                      width: 130 ,
                      child: Text(
                        coffee.subtitile,
                        maxLines: 2,
                        textAlign: TextAlign.start,
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.sora(
                          color: Colors.grey[500],
                          fontSize: 14
                          ),
                      ),
                    ),

                    const SizedBox(height: 5),


                    // Price and Add Button.
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        // const SizedBox(width: 15),
                        Text(
                          coffee.price,
                          textAlign: TextAlign.right,
                          style: GoogleFonts.sora(fontSize: 20,fontWeight: FontWeight.bold),
                        ),

                        const SizedBox(width: 3),

                        SizedBox(
                            height: 33,
                            width: 34,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.all(2),
                                  backgroundColor: const Color(0xFFC67C4E),
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10)))),
                              child: const Icon(Icons.add,color: Colors.white,)
                          ),
                        ),
                          
                      ],
                    ),
                    
                  ],
                ),
              ),

            ],
          ),
        ),
      );
  }
}
