import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/features/home/view/widgets/banner_home.dart';
import 'package:flutter_application_1/presentation/features/home/view/widgets/carousel.dart';
import 'package:flutter_application_1/presentation/features/home/view/widgets/collection_carousel.dart';
import 'package:flutter_application_1/presentation/features/home/view/widgets/header.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 20.0,
              ),
              child: Column(
                children: [
                  Header(),
                  Carousel(),
                  CollectionCarousel(),
                  BannerHome(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
