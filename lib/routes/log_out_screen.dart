import 'package:flutter/material.dart';
import 'package:flutter_foldable_sidebar_demo/home_screen.dart';

class LogOut extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: CustomAppBar(
          'Log out Page',
        ),
        body: Body(
          firstImage: 'assets/plants.jpeg',
          textOne: 'Ficus Microcarpa',
          firstAmount: 34.90,
          textDescription: 'Description',
          textTwo: 'Ficus microcarpa, also known as Chinese banyan, '
              'Malayan banyan, Indian laurel, curtain fig, '
              'or gajumaru (ガジュマル),[3] is a tree in the fig family Moraceae. '
              'It is native in a range from China '
              'through tropical Asia and the Caroline Islands to Australia',
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
