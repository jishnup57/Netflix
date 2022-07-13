import 'package:flutter/material.dart';
import 'package:netflixapp/presentation/widgets/main_card.dart';
import 'package:netflixapp/presentation/widgets/main_titile.dart';

class MainTitleCard extends StatelessWidget {
  const MainTitleCard({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: MainTitle(title: title),
        ),
        LimitedBox(
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(10, (index) => const MainCardHome()),
          ),
        )
      ],
    );
  }
}
