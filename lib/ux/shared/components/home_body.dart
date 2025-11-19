import 'package:flutter/material.dart';
import 'package:portfolio/ux/shared/components/social_media_widget.dart';
import 'package:portfolio/ux/shared/resources/app_colors.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(vertical: 150),
        children: [
          const Align(
            alignment: Alignment.centerLeft,
            child: CircleAvatar(
              radius: 35,
              backgroundColor: AppColors.grey,
            ),
          ),
          const SizedBox(height: 20),
          Text('Hey, ID here!',
              style: Theme.of(context).textTheme.displayLarge),
          const SizedBox(height: 10),
          Text("How's your ${DateTime.now().timeZoneName} going?",
              style: Theme.of(context).textTheme.bodyMedium),
          const SizedBox(height: 30),
          Text(
            'Hey there! I’m Iniunam, Idorenyin but since my name is a bit tricky to pronounce, you can just call me ID. I’m a Flutter developer and digital problem-solver from Nigeria, turning “how do we do this?” ideas into sleek, functional apps. Whether I’m collaborating with a team of fellow innovators or flying solo like a code ninja, I bring a mix of creativity, precision, and just enough magic to make projects shine.',
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(height: 1.5, color: AppColors.textGrey),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.black,
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            onPressed: () {},
            child: const Text('Contact'),
          ),
          const SizedBox(height: 60),
          Text('Work', style: Theme.of(context).textTheme.displayLarge),
          const SizedBox(height: 60),
          Text('Side Projects',
              style: Theme.of(context).textTheme.displayLarge),
          const SizedBox(height: 60),
          Text('Tool Stack', style: Theme.of(context).textTheme.displayLarge),
          const SizedBox(height: 60),
          Text('Social Validations',
              style: Theme.of(context).textTheme.displayLarge),
          const SizedBox(height: 80),
          const SocialMediaWidget(),
          const SizedBox(height: 100),
          Text(
            'Thanks for Visiting.',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(height: 5),
          Text(
            'Until Next Time. Stay Safe!',
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(color: AppColors.darkTextGrey),
          ),
        ],
      ),
    );
  }
}
