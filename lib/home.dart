import 'package:flutter/material.dart';
import 'package:my_portfolio/header.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:my_portfolio/colors.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Material(
      color: Coolers.primaryColor,
      child: VStack([
        HeaderScreen(),
      ]).scrollVertical(),
    );
  }
}
