import 'package:flower_store/style/style.dart';
import 'package:flutter/material.dart';

class CustomBNB extends StatelessWidget {
  const CustomBNB({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: kDefauldPadding * 2,
        right: kDefauldPadding * 2,
        bottom: kDefauldPadding,
      ),
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -10),
            blurRadius: 35,
            color: kPrimaryColor.withOpacity(0.38),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.home,
              color: kPrimaryColor,
              size: kIconSize,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite,
              color: kPrimaryColor,
              size: kIconSize,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.person,
              color: kPrimaryColor,
              size: kIconSize,
            ),
          ),
        ],
      ),
    );
  }
}
