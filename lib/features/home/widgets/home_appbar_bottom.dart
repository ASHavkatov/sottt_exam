import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'home_key_container.dart';

class HomeAppBarBottom extends StatelessWidget {
  const HomeAppBarBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.white,
      expandedHeight: 231,
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          children: [
            Image(
              image: AssetImage("assets/images/background_photo.jpg"),
              fit: BoxFit.cover,
            ),
            Positioned(
              left: 20,
              top: 150,
              child: Row(
                spacing: 12,
                children: [
                  HomeKeyContainer(svg: 'assets/svg/key.svg'),
                  HomeKeyContainer(svg: 'assets/svg/shieldcheck.svg'),
                  HomeKeyContainer(svg: 'assets/svg/clock2.svg'),
                  HomeKeyContainer(svg: 'assets/svg/buildings.svg'),
                ],
              ),
            ),
          ],
        ),
      ),
      title: Row(
        spacing: 10,
        children: [
          SvgPicture.asset('assets/svg/logo.svg'),
          Text(
            "SOTT",
            style: TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.w900,
            ),
          ),
          SizedBox(width: 150),
          SvgPicture.asset("assets/svg/notification.svg"),

        ],
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SvgPicture.asset("assets/icons/notification.svg"),
        ),
      ],
    );
  }
}