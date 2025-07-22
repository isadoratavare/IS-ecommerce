import 'package:flutter/material.dart';

class MiniCart extends StatelessWidget {
  final String itemsCount;

  const MiniCart({super.key, required this.itemsCount});

  void onOpenCart() {
    print('Clicado!');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onOpenCart,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.black,
                  size: 24.0,
                ),
              ),

              Positioned(
                top: 0,
                right: 0,
                child: Container(
                  padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(3),
                  ),
                  child: Text(
                    itemsCount,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
