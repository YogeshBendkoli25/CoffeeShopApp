import 'package:coffeshop/provider/coffee_cate_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

class CoffeeCategoryList extends ConsumerWidget {
  const CoffeeCategoryList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Category Scrollable
    final coffeeCategories = ref.read(coffeeCategoryProvider);

    return Container(
      // padding: ,
      margin: EdgeInsets.zero,
      // color: Colors.green,
      height: 60,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(
            coffeeCategories.length,
            (index) => Padding(
              padding: const EdgeInsets.all(12.0),
              child: InkWell(
                onTap: () {
                  ref.read(coffeeFilterProvider.notifier).state =
                      coffeeCategories[index];
                },
                child: Container(
                  padding: const EdgeInsets.only(
                      top: 4, bottom: 4, left: 10, right: 10),
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: ref.watch(coffeeFilterProvider) ==
                            coffeeCategories[index]
                        ? const Color(0xFFBC8056)
                        : Colors.white,
                  ),
                  child:
                      ref.watch(coffeeFilterProvider) == coffeeCategories[index]
                          ? Text(
                              coffeeCategories[index],
                              style: GoogleFonts.sora(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: ref.watch(coffeeFilterProvider) ==
                                        coffeeCategories[index]
                                    ? Colors.white
                                    : Colors.black,
                              ),
                            )
                          : Text(
                              coffeeCategories[index],
                              style: GoogleFonts.sora(
                                fontSize: 16,
                                color: ref.watch(coffeeFilterProvider) ==
                                        coffeeCategories[index]
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
