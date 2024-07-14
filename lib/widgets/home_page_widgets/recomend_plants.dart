import 'package:flower_store/page/details_page.dart';
import 'package:flower_store/style/style.dart';
import 'package:flutter/material.dart';

class RecomendPlans extends StatelessWidget {
  const RecomendPlans({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecomendedCard(
            image: 'assets/images/image_1.png',
            title: 'Samantha',
            country: 'Russia',
            price: 440,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DetailsPage(),
                ),
              );
            },
          ),
          RecomendedCard(
            image: 'assets/images/image_2.png',
            title: 'Angelica',
            country: 'Russia',
            price: 540,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DetailsPage(),
                ),
              );
            },
          ),
          RecomendedCard(
            image: 'assets/images/image_3.png',
            title: 'Cacrus?',
            country: 'Russia',
            price: 640,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DetailsPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class RecomendedCard extends StatelessWidget {
  final String image;
  final String title;
  final String country;
  final int price;
  final Function()? press;

  const RecomendedCard({
    super.key,
    required this.image,
    required this.title,
    required this.country,
    required this.price,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(
        left: kDefauldPadding,
        top: kDefauldPadding / 2,
        bottom: kDefauldPadding * 2.5,
      ),
      width: size.width * 0.4,
      child: Column(
        children: [
          Image.asset(image),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: const EdgeInsets.all(kDefauldPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '$title\n'.toUpperCase(),
                          style: Theme.of(context).textTheme.labelLarge,
                        ),
                        TextSpan(
                          text: country.toUpperCase(),
                          style: TextStyle(color: kPrimaryColor.withOpacity(0.5)),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Text(
                    '\$$price',
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                          color: kPrimaryColor,
                        ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
