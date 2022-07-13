import 'package:flutter/material.dart';
import 'package:netflixapp/presentation/Home/widget/number_card.dart';
import 'package:netflixapp/presentation/widgets/main_titile.dart';

class NumberTitleCard extends StatelessWidget {
  const NumberTitleCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: MainTitle(title: "Top10 TV Shows in India today"),
        ),
        LimitedBox(
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
                10,
                (index) => NumberCard(
                      index: index,
                    )),
          ),
        )
      ],
    );
  }
}
