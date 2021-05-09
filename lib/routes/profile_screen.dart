import 'package:flutter/material.dart';
import 'package:flutter_foldable_sidebar_demo/home_screen.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: CustomAppBar(
          'Profile Page',
        ),
        body: Body(
          firstImage: 'assets/hibiscus.jpeg',
          textOne: 'Hibiscus (ZOBO)',
          firstAmount: 39.09,
          textDescription: 'Description',
          textTwo:
              'Roselle (Hibiscus sabdariffa) is a species of Hibiscus probably native to West and '
              'East Africa and South-East Asia including Northeastern India.[1] It is used for '
              'the production of bast fibre and as an infusion, in which it may be known as carcade.'
              'Among the Yoruba in southwest Nigeria, Roselle is known as isapa, '
              'and yakuwa by the Hausa peopleof northern Nigeria who also call '
              'the seeds as gurguzu and the capsule cover as zoborodo or zobo.',
          icon: Icon(
            Icons.directions_car,
            color: Colors.redAccent,
            size: 25.0,
          ),
          buttonText: 'Go To HomePage',
          homeButton: () {
            Navigator.pushNamed(context, '/home');
          },
        ),
      ),
    );
  }
}
