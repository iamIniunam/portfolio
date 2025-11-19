import 'package:flutter/material.dart';
import 'package:portfolio/ux/shared/components/built_by_me.dart';
import 'package:portfolio/ux/shared/components/home_body.dart';
import 'package:portfolio/ux/shared/components/side_menu.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SideMenu(),
          HomeBody(),
          BuiltByMeWidget(),
        ],
      ),
    );
  }
}
