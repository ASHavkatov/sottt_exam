import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/colors.dart';

class HomeKeyContainer extends StatelessWidget {
  const HomeKeyContainer({super.key, required this.svg});

  final String svg;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 78,
      height: 78,
      decoration: BoxDecoration(
        color: AppColors.containerKey,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(child: SvgPicture.asset(svg)),
    );
  }
}