import 'package:flower_store/style/style.dart';
import 'package:flower_store/widgets/home_page_widgets/body.dart';
import 'package:flower_store/widgets/home_page_widgets/custom_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(),
      body: Body(),
      bottomNavigationBar: CustomBNB(),
    );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: kPrimaryColor,
      elevation: 0,
      leading: IconButton(
        icon: const Icon(Icons.menu),
        onPressed: () {},
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
