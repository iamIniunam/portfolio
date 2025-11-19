import 'package:flutter/material.dart';
import 'package:portfolio/ux/shared/resources/app_colors.dart';

class Line extends StatelessWidget {
  const Line({super.key, this.isLeft = true});

  final bool isLeft;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: isLeft ? 0 : 12, right: isLeft ? 12 : 0),
        child: Container(
          height: 0.5,
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.grey,
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}
