import 'package:flower_store/style/style.dart';
import 'package:flutter/material.dart';

class TitleWithMore extends StatelessWidget {
  final String title;

  const TitleWithMore({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefauldPadding),
      child: Row(
        children: [
          TitlewithLine(data: title),
          const Spacer(),
          TextButton(
            style: ButtonStyle(
              backgroundColor: const MaterialStatePropertyAll(kPrimaryColor),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              )),
            ),
            onPressed: () {},
            child: const Text('More', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}

class TitlewithLine extends StatelessWidget {
  final String data;
  const TitlewithLine({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: kDefauldPadding / 4),
            child: Text(
              data,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: const EdgeInsets.only(right: kDefauldPadding / 4),
              height: 7,
              color: kPrimaryColor.withOpacity(0.2),
            ),
          ),
        ],
      ),
    );
  }
}
