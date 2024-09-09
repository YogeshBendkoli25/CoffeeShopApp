import 'package:coffeshop/provider/coffee_sizebtn_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CoffeeSizeButton extends ConsumerWidget {
  const CoffeeSizeButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectSize = ref.watch(sizeProvider);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      
      children: [
        //  S button

        InkWell(
          onTap: () {
            ref.read(sizeProvider.notifier).selectSize('S');
          },
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          child: Container(
            alignment: Alignment.center,
            width: 105,
            height: 50,
            decoration: BoxDecoration(
                color: selectSize == 'S' ? const  Color.fromARGB(166, 245, 229, 204) : Colors.transparent, 
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                    color: selectSize == "S"
                        ? Colors.orange
                        : Colors.grey.shade400)),
            child: const Text('S'),
          ),
        ),
        const SizedBox(width: 20),
        InkWell(
          onTap: () {
            ref.read(sizeProvider.notifier).selectSize('M');
          },
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          child: Container(
            alignment: Alignment.center,
            width: 105,
            height: 50,
            decoration: BoxDecoration(
              color: selectSize == 'M' ? Color.fromARGB(166, 245, 229, 204) : Colors.transparent, 
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                    color: selectSize == "M"
                        ? Colors.orange
                        : Colors.grey.shade400)),
            child: const Text('M'),
          ),
        ),
        const SizedBox(width: 20),

        InkWell(
          onTap: () {
            ref.read(sizeProvider.notifier).selectSize('L');
          },
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          child: Container(
            alignment: Alignment.center,
            width: 105,
            height: 50,
            decoration: BoxDecoration(
              color: selectSize == 'L' ? const  Color.fromARGB(166, 245, 229, 204) : Colors.transparent, 
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                    color: selectSize == "L"
                        ? Colors.orange
                        : Colors.grey.shade400)),
            child: const Text('L'),
          ),
        ),
      ],
    );
  }
}
