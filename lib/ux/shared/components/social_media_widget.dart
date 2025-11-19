import 'package:flutter/material.dart';
import 'package:portfolio/ux/shared/components/app_material.dart';
import 'package:portfolio/ux/shared/components/line.dart';
import 'package:portfolio/ux/shared/resources/app_colors.dart';
import 'package:portfolio/ux/shared/resources/app_images.dart';

class SocialMediaWidget extends StatelessWidget {
  const SocialMediaWidget({super.key});

  static List<AssetImage> socialMediaAssets = [
    AppImages.instagramLogo,
    AppImages.linkedinLogo,
    AppImages.xLogo,
    AppImages.githubLogo,
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Line(),
        ...List.generate(
          socialMediaAssets.length,
          (index) => SocialMediaChip(icon: socialMediaAssets[index]),
        ),
        const Line(isLeft: false),
      ],
    );
  }
}

class SocialMediaChip extends StatefulWidget {
  const SocialMediaChip({super.key, required this.icon});

  final AssetImage icon;

  @override
  State<SocialMediaChip> createState() => _SocialMediaChipState();
}

class _SocialMediaChipState extends State<SocialMediaChip> {
  static bool isHovering = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: AppMaterial(
        color: AppColors.transparent,
        borderRadius: BorderRadius.circular(12),
        onHover: (value) {
          setState(() {
            isHovering = value;
          });
        },
        onTap: () {},
        inkwellBorderRadius: BorderRadius.circular(12),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
                color: isHovering ? AppColors.white : AppColors.grey, width: 1),
          ),
          child: Image(
              image: widget.icon, height: 24, width: 24, fit: BoxFit.cover),
        ),
      ),
    );
  }
}
