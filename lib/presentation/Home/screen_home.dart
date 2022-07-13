import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflixapp/core/colors/colors.dart';
import 'package:netflixapp/core/constants.dart';
import 'package:netflixapp/presentation/Home/widget/background_card.dart';
import 'package:netflixapp/presentation/Home/widget/number_title_card.dart';
import 'package:netflixapp/presentation/widgets/main_title_card.dart';

import '../../application/downloads/downloads_bloc.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<DownloadsBloc>(context)
        .add(const DownloadsEvent.getDownloadsImage());
    return Scaffold(
        body: ValueListenableBuilder(
      valueListenable: scrollNotifier,
      builder: (BuildContext ctx, index, Widget? _) {
        return NotificationListener<UserScrollNotification>(
          onNotification: (notification) {
            final ScrollDirection direction = notification.direction;
            print(direction);
            if (direction == ScrollDirection.reverse) {
              scrollNotifier.value = false;
            } else if (direction == ScrollDirection.forward) {
              scrollNotifier.value = true;
            }
            return true;
          },
          child: Stack(
            children: [
              ListView(
                children: const [
                  BackgroundCard(),
                  kHeight,
                  MainTitleCard(
                    title: "Released in the past year",
                  ),
                  kHeight,
                  MainTitleCard(
                    title: "Trending Now",
                  ),
                  kHeight,
                  NumberTitleCard(),
                  kHeight,
                  MainTitleCard(
                    title: "Tense Dramas",
                  ),
                  kHeight,
                  MainTitleCard(
                    title: "South Indian Cinemas",
                  ),
                ],
              ),
              scrollNotifier.value == true
                  ? AnimatedContainer(
                      duration: const Duration(milliseconds: 1000),
                      width: double.infinity,
                      height: 90,
                      color: Colors.black.withOpacity(0.3),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'asset/image/netflix_logo.png',
                                width: 50,
                                height: 50,
                              ),
                              const Spacer(),
                              const Icon(
                                Icons.cast,
                                size: 25,
                                color: Colors.white,
                              ),
                              kWidth,
                              Container(
                                width: 30,
                                height: 30,
                                color: Colors.blue,
                              ),
                              kWidth
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Text(
                                "TV shows",
                                style: kHomeTextstyle,
                              ),
                              const Text("Movies", style: kHomeTextstyle),
                              Row(
                                children: const [
                                  Text(
                                    "Categories",
                                    style: kHomeTextstyle,
                                  ),
                                  Icon(
                                    Icons.arrow_drop_down,
                                    color: colorWhite,
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  : kHeight
            ],
          ),
        );
      },
    ));
  }
}
