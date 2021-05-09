import 'package:flutter/material.dart';
import 'package:flutter_foldable_sidebar_demo/home_screen.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: CustomAppBar('Settings Page'),
        body: Body(
          firstImage: 'assets/datepalm.jpeg',
          textOne: 'Date palm',
          firstAmount: 34.90,
          textDescription: 'Description',
          textTwo:
              'Phoenix dactylifera, commonly known as date or date palm,is a flowering plant species in the palm family, Arecaceae, '
              'cultivated for its edible sweet fruit. The species is widely cultivated across Northern Africa,'
              ' the Middle East and South Asia, and is naturalized in many tropical and subtropical regions worldwide.',
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
