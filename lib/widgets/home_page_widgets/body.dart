import 'package:flower_store/style/style.dart';
import 'package:flower_store/widgets/home_page_widgets/feature_plants.dart';
import 'package:flower_store/widgets/home_page_widgets/head_with_searchbox.dart';
import 'package:flower_store/widgets/home_page_widgets/recomend_plants.dart';
import 'package:flower_store/widgets/home_page_widgets/title_with_more.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeadWithSearchBox(size: size),
          const TitleWithMore(title: 'Recomended'),
          const RecomendPlans(),
          const TitleWithMore(title: 'Feature Plants'),
          const FeaturePlants(),
          SizedBox(height: kDefauldPadding),
        ],
      ),
    );
  }
}
