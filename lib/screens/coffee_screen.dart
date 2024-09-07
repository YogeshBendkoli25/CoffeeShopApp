import 'package:coffeshop/screens/coffee_categories.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CoffeeScreen extends StatelessWidget {
  const CoffeeScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Stack(children: [
            Image.asset('assets/images/coffecupimage.png',
              fit: BoxFit.fill,
              ),
            
          Positioned(
            // bottom: 10,
            // top: 500,
            bottom: 70,
            right: 1,
            left: 1,
            child: Column(
              children: [
              
                Padding(
                    padding: const EdgeInsets.all(12),
                    child: Text(
                      'Fall in Love with Coffee in Blissful Delight!',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.sora(
                          fontSize: 32,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Text(
                      'Welcome to our cozy coffee corner, where every cup is a delightful for you.',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.sora(
                          fontSize: 15,
                          color: const Color.fromARGB(255, 181, 177, 177))),
                ),
                 const SizedBox( height: 10,
                 ),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFBC7F56),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 140, vertical: 20.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => const CoffeeCategories()));
                  },
                  child: Text('Get Started',
                  style: GoogleFonts.sora(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
