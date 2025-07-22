import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/shared/widgets/button.dart';

import 'package:google_fonts/google_fonts.dart';

class CarouselCard extends StatelessWidget {
  const CarouselCard({super.key, this.bgColor});

  final Color? bgColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340,
      decoration: BoxDecoration(
        color: bgColor ?? const Color(0xFFC0D8D4),
        borderRadius: BorderRadius.circular(10.0),
      ),

      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Subtitle(), Title()],
                ),

                Button(title: "Explore Now"),
              ],
            ),
            BannerImage(),
          ],
        ),
      ),
    );
  }
}

class BannerImage extends StatelessWidget {
  const BannerImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
    
      children: [Text("Image")],
    );
  }
}

class Title extends StatelessWidget {
  const Title({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "It's simple",
      style: GoogleFonts.poppins(
        textStyle: const TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class Subtitle extends StatelessWidget {
  const Subtitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'New Drop',
      style: GoogleFonts.inter(
        textStyle: const TextStyle(color: Color.fromARGB(255, 85, 87, 87)),
        fontSize: 12.0,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
