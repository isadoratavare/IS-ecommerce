import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/features/home/view/widgets/carousel_card.dart';

class Carousel extends StatelessWidget {
  const Carousel({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: SizedBox(
        height: 200,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            CarouselCard(bgColor: Color(0xFFC0D8D4)),
            SizedBox(width: 10),
            CarouselCard(bgColor: Color(0xFFD8CCC2)),
          ],
        ),
      ),
    );
  }
}
