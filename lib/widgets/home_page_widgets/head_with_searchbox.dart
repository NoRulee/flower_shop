import 'package:flower_store/style/style.dart';
import 'package:flutter/material.dart';

class HeadWithSearchBox extends StatelessWidget {
  const HeadWithSearchBox({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: kDefauldPadding * 2.5),
      height: size.height * 0.2,
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(
              left: kDefauldPadding,
              right: kDefauldPadding,
              bottom: 36 + kDefauldPadding,
            ),
            decoration: const BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(32),
                bottomRight: Radius.circular(32),
              ),
            ),
            child: Row(
              children: [
                Text(
                  'Hi, User!',
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const Spacer(),
                Image.asset('assets/images/logo.png'),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(horizontal: kDefauldPadding),
              padding: const EdgeInsets.symmetric(horizontal: kDefauldPadding),
              height: 54,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  )
                ],
              ),
              child: TextField(
                onChanged: (value) {},
                decoration: InputDecoration(
                  hintText: 'Search',
                  hintStyle: TextStyle(
                    color: kPrimaryColor.withOpacity(0.5),
                  ),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  suffixIcon: const Icon(
                    Icons.search,
                    color: kPrimaryColor,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
