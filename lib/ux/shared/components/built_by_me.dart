import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/ux/shared/resources/app_colors.dart';

class BuiltByMeWidget extends StatelessWidget {
  const BuiltByMeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Align(
        alignment: Alignment.bottomRight,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 50),
          child: RichText(
            text: TextSpan(
              text: 'Built by ',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(color: AppColors.darkTextGrey),
              children: [
                TextSpan(
                  text: 'Moi',
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(color: AppColors.white),
                ),
                TextSpan(
                  text: ' with ',
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(color: AppColors.darkTextGrey),
                ),
                TextSpan(
                  text: 'Flutter',
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      // Handle tap event
                    },
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(color: AppColors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
