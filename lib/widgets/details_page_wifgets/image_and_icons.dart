import 'package:flower_store/style/style.dart';
import 'package:flutter/material.dart';

class ImageAndIcons extends StatelessWidget {
  const ImageAndIcons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefauldPadding * 3),
      child: SizedBox(
        height: size.height * 0.8,
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: kDefauldPadding * 3),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        padding: const EdgeInsets.symmetric(horizontal: kDefauldPadding),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.arrow_back),
                      ),
                    ),
                    const Spacer(),
                    const IconCard(icon: Icons.sunny),
                    const IconCard(icon: Icons.thermostat),
                    const IconCard(icon: Icons.opacity),
                    const IconCard(icon: Icons.air),
                  ],
                ),
              ),
            ),
            Container(
              height: size.height * 0.8,
              width: size.width * 0.75,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(63),
                  bottomLeft: Radius.circular(63),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 10),
                    blurRadius: 60,
                    color: kPrimaryColor.withOpacity(0.29),
                  )
                ],
                image: const DecorationImage(
                  alignment: Alignment.centerLeft,
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/img.png'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class IconCard extends StatelessWidget {
  final IconData icon;
  const IconCard({
    super.key,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: size.height * 0.03,
      ),
      padding: const EdgeInsets.all(kDefauldPadding / 2),
      height: 62,
      width: 62,
      decoration: BoxDecoration(
        color: kBackgroundColor,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 15),
            blurRadius: 22,
            color: kPrimaryColor.withOpacity(0.22),
          ),
          const BoxShadow(
            offset: Offset(-15, -15),
            blurRadius: 20,
            color: Colors.white,
          )
        ],
      ),
      child: Icon(
        icon,
        color: kPrimaryColor,
        size: kIconSize,
      ),
    );
  }
}
