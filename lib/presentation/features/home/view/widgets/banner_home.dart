import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/shared/widgets/button.dart';
import 'package:google_fonts/google_fonts.dart';

class BannerHome extends StatelessWidget {
  const BannerHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        color: const Color(0xFFE8D7C2),
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
                  children: [
                    Subtitle(),
                    Title(text: "Shoe Number One"),
                  ],
                ),

                Button(title: "Explore Now"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
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
