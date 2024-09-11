import 'package:coffeshop/provider/coffee_filter_cat.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

class CoffeeCategoryList extends ConsumerWidget {
  const CoffeeCategoryList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Category Scrollable
    final selectedCategory = ref.watch(selectedCategoryProvider);
    final categories = ref.watch(availableCoffeeCategoriesProvider);

    return Container(
      margin: EdgeInsets.zero,
      height: 60,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(
            categories.length,
            (index) => Padding(
              padding: const EdgeInsets.all(12.0),
              child: InkWell(
                onTap: () {
                  
                  ref.read(selectedCategoryProvider.notifier).state =
                      categories[index]; // Update the selected category state correctly
                },
                child: Container(
                  padding: const EdgeInsets.only(
                      top: 4, bottom: 4, left: 10, right: 10),
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: selectedCategory == categories[index]
                        ? const Color(0xFFBC8056)
                        : Colors.white,
                  ),
                  child: Text(
                    categories[index],
                    style: GoogleFonts.sora(
                      fontSize: 16,
                      fontWeight: selectedCategory == categories[index]
                          ? FontWeight.bold
                          : FontWeight.normal,
                      color: selectedCategory == categories[index]
                          ? Colors.white
                          : Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
