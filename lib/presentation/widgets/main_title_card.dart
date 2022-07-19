import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflixapp/presentation/widgets/main_card.dart';
import 'package:netflixapp/presentation/widgets/main_titile.dart';

import '../../domain/downloads/models/downloads.dart';

class MainTitleCard extends StatelessWidget {
   const MainTitleCard({Key? key, required this.title,this.data=const[]}) : super(key: key);
  final String title;
  final List<Downloads> data;
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
            children: List.generate(data.length, (index) {
              final newData=data[index];
              return MainCardHome(data: newData);
            }),
          ),
        )
      ],
    );
  }
}
