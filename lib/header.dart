// @dart=2.9
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:my_portfolio/colors.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';


class HeaderScreen extends StatelessWidget {
  const HeaderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: VxBox(
      child:  VStack([
        ZStack([
           const PictureWidget(),
          Row(children: [
            VStack([
               const CustomAppBar().shimmer(
                 primaryColor: Coolers.accentColor,
               ),
              30.heightBox,
              namewidget(context),
              20.heightBox,
              VxBox().color(Coolers.accentColor)
                  .size(60, 10)
                  .make()
                  .shimmer(primaryColor: Coolers.accentColor),
              30.heightBox,
              const SocialAccounts()
              .pSymmetric(
                  h: context.percentWidth * 10,
                  v: 32),
              Expanded(child: VStack([
                " - Introduction".text.gray500.widest.sm.make(),
                10.heightBox,
              ]))
            ])
          ],)
        ]),
      ])
    ).make(),);
  }

  Widget namewidget(BuildContext context) {
    return "Muhammed\nBello."
                .text
                .white
                .xl6
                .lineHeight(1)
                .size(context.isMobile?15:20)
                .bold
                .make()
                .shimmer();
  }
}

class PictureWidget extends StatelessWidget {
  const PictureWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform(
      alignment: Alignment.centerRight,
      transform: Matrix4.rotationY(pi),
      child: Image.asset("assets/image/a_dot_ham.png",
      fit: BoxFit.cover,
        height: context.percentHeight*60,
        alignment: Alignment.topCenter,
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      AntDesign.codesquare,
      size: 50,
      color: Coolers.accentColor,
    );
  }
}


class SocialAccounts extends StatelessWidget {
  const SocialAccounts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return [
      const Icon(AntDesign.twitter, color: Colors.white).mdClick(() {
        launchUrl("https://twitter.com/OlaL3kanMo" as Uri);
      }).make(),
      20.widthBox,
      const Icon(AntDesign.linkedin_square, color: Colors.white).mdClick(() {
        launchUrl("https://www.linkedin.com/in/muhammed-bello-5b043a91" as Uri);
      }).make(),
      20.widthBox,
      const Icon(AntDesign.mail, color: Colors.white).mdClick(() {
        launchUrl("mumabelope@gmail.com" as Uri);
      }).make(),
      20.widthBox,
      const Icon(AntDesign.github, color: Colors.white).mdClick(() {
        launchUrl("https://github.com/BelloDrt" as Uri);
      }).make()
    ].hStack();
  }
}
