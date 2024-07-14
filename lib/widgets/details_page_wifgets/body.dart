import 'package:flower_store/style/style.dart';
import 'package:flower_store/widgets/details_page_wifgets/image_and_icons.dart';
import 'package:flower_store/widgets/details_page_wifgets/title_and_price.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          const ImageAndIcons(),
          const TitleAndPrice(title: 'Angelica', price: 440, country: 'Russia'),
          const SizedBox(
            height: kDefauldPadding,
          ),
          Row(
            children: [
              SizedBox(
                width: size.width / 2,
                height: 84,
                child: TextButton(
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(kPrimaryColor)),
                  onPressed: () {},
                  child: const Text(
                    'Buy Now',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Expanded(
                  child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Description',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ))
            ],
          ),
        ],
      ),
    );
  }
}
