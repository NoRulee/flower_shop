import 'package:flower_store/style/style.dart';
import 'package:flutter/material.dart';

class FeaturePlants extends StatelessWidget {
  const FeaturePlants({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeaturePlantsCard(
            image: 'assets/images/bottom_img_1.png',
          ),
          FeaturePlantsCard(
            image: 'assets/images/bottom_img_2.png',
          ),
        ],
      ),
    );
  }
}

class FeaturePlantsCard extends StatelessWidget {
  final String image;
  const FeaturePlantsCard({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.only(
          left: kDefauldPadding,
          top: kDefauldPadding / 2,
          right: kDefauldPadding / 2,
        ),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.fitWidth,
            image: AssetImage(image),
          ),
        ),
      ),
    );
  }
}
