import 'package:flutter/material.dart';
import 'package:netflixapp/core/constants.dart';

import '../../domain/downloads/models/downloads.dart';

class MainCardHome extends StatelessWidget {
  final Downloads data;
  const MainCardHome({
    Key? key,
   required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      width: 150,
      height: 250,
      decoration: BoxDecoration(
        borderRadius: kRadius10,
        image:  DecorationImage(
            image: NetworkImage(
                'https://image.tmdb.org/t/p/w500${data.posterPath}'),
            fit: BoxFit.cover),
      ),
    );
  }
}
