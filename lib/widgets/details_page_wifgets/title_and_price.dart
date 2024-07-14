import 'package:flower_store/style/style.dart';
import 'package:flutter/material.dart';

class TitleAndPrice extends StatelessWidget {
  final String title;
  final int price;
  final String country;

  const TitleAndPrice({
    super.key,
    required this.title,
    required this.price,
    required this.country,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefauldPadding),
      child: Row(
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: '$title\n',
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                        color: kTextColor,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                TextSpan(
                  text: country,
                  style: const TextStyle(
                    fontSize: 20,
                    color: kPrimaryColor,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Text(
            '\$$price',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  color: kPrimaryColor,
                ),
          ),
        ],
      ),
    );
  }
}
