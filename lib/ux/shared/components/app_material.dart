import 'package:flutter/material.dart';
import 'package:portfolio/ux/shared/resources/app_colors.dart';

class AppMaterial extends StatelessWidget {
  const AppMaterial({
    super.key,
    this.onTap,
    required this.child,
    this.borderRadius,
    this.inkwellBorderRadius,
    this.elevation,
    this.color,
    this.customBorder,
    this.splashColor,
    this.onHover,
  });

  final VoidCallback? onTap;
  final Widget child;
  final BorderRadiusGeometry? borderRadius;
  final BorderRadius? inkwellBorderRadius;
  final double? elevation;
  final Color? color;
  final ShapeBorder? customBorder;
  final Color? splashColor;
  final ValueChanged<bool>? onHover;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: color ?? AppColors.transparent,
      borderRadius: borderRadius ?? BorderRadius.circular(0),
      elevation: elevation ?? 0,
      child: InkWell(
        splashColor: splashColor ?? AppColors.black.withOpacity(0.1),
        // overlayColor: MaterialStateColor.resolveWith(
        //     (states) => AppColors.defaultColor.withOpacity(0.1)),
        borderRadius: inkwellBorderRadius ?? BorderRadius.circular(0),
        customBorder: customBorder,
        onTap: onTap,
        onHover: onHover,
        child: child,
      ),
    );
  }
}
