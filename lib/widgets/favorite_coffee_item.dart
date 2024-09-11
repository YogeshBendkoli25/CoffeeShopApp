import 'package:coffeshop/models/coffee.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FavoriteCoffeeItem extends StatelessWidget {
  const FavoriteCoffeeItem({
    super.key,
    required this.coffee,
    required this.onSelectCoffee,
  });

  final Coffee coffee;
  final void Function(Coffee coffee) onSelectCoffee;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
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
          mainAxisSize: MainAxisSize.min,
          children: [
            // Coffee Image
            Container(
              margin: const EdgeInsets.all(10), // Corner circular.
              width: double.infinity, // Make it expand to full width
              height: 150, // Adjusted height for better aspect ratio
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(19),
                image: DecorationImage(
                  image: coffee.image.image,
                  fit: BoxFit.cover, // Make the image cover the container properly
                ),
              ),
            ),
            
            // Coffee Details
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Coffee Title
                  Text(
                    coffee.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.sora(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),

                  // Coffee Subtitle
                  Text(
                    coffee.subtitle,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.sora(
                      color: Colors.grey[500],
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 10),

                  // Price and Add Button
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Price
                      Text(
                        coffee.price,
                        textAlign: TextAlign.right,
                        style: GoogleFonts.sora(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10), // Add some spacing at the bottom
          ],
        ),
      ),
    );
  }
}
