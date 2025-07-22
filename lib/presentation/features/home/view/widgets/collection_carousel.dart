import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/mocks/collection_products.dart';
import 'package:flutter_application_1/domain/entities/collection_products.dart';
import 'package:google_fonts/google_fonts.dart';

class CollectionCarousel extends StatelessWidget {
  const CollectionCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CollectionName(name: "New Drop"),
        CollectionList(),
      ],
    );
  }
}

class CollectionName extends StatelessWidget {
  const CollectionName({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            name,
            style: GoogleFonts.inter(
              textStyle: const TextStyle(
                color: Color.fromARGB(255, 85, 87, 87),
              ),
              fontSize: 20.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}

class CollectionList extends StatelessWidget {
  const CollectionList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: productsMock.length,
        itemBuilder: (context, index) {
          return CollectionCard(product: productsMock[index]);
        },
      ),
    );
  }
}

class CollectionCard extends StatelessWidget {
  const CollectionCard({super.key, required this.product});

  final CollectionProductDTO product;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ImageCard(),
            SizedBox(height: 4),
            Title(product: product),
            Subtitle(product: product),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "\$",
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Text(
                    product.price.toStringAsFixed(2),
                    style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Subtitle extends StatelessWidget {
  const Subtitle({super.key, required this.product});

  final CollectionProductDTO product;

  @override
  Widget build(BuildContext context) {
    return Text(
      product.productSubtitle,
      style: GoogleFonts.inter(
        textStyle: const TextStyle(
          color: Color.fromARGB(255, 97, 97, 97),
          fontWeight: FontWeight.w500,
          fontSize: 13,
        ),
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({super.key, required this.product});

  final CollectionProductDTO product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Text(
        product.productTitle,
        style: GoogleFonts.inter(
          textStyle: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}

class ImageCard extends StatelessWidget {
  const ImageCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: Color(0xFFE1E1E1),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text("Image")],
      ),
    );
  }
}
