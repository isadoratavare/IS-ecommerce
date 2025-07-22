import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/shared/widgets/mini_cart.dart';
import 'package:google_fonts/google_fonts.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [UserName(), WelcomeTitle()],
          ),
      
          MiniCart(itemsCount: '2'),
        ],
      ),
    );
  }
}

class WelcomeTitle extends StatelessWidget {
  const WelcomeTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Discover your style',
      style: GoogleFonts.inter(
        textStyle: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w500,
          fontSize: 20,
        ),
      ),
    );
  }
}

class UserName extends StatelessWidget {
  const UserName({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Hi Andrew,',
      style: GoogleFonts.inter(
        textStyle: const TextStyle(color: Colors.grey),
        fontWeight: FontWeight.w500,
      ),
      textAlign: TextAlign.right,
    );
  }
}
