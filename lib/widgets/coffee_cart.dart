import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CoffeeCart extends ConsumerWidget {
  const CoffeeCart({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Order'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              SizedBox(
                child: Row(children: [
                  ElevatedButton(onPressed: (){},
                  style: ButtonStyle(),
                  child: Text('Delivery')),
                  ElevatedButton(onPressed: (){},
                  style: ButtonStyle(),
                  child: Text('PickUp'))
                ],),
              )
            ],
          )
        ],
      ),
    );
  }
}
