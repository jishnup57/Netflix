import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflixapp/application/downloads/downloads_bloc.dart';
import 'package:netflixapp/core/colors/colors.dart';
import 'package:netflixapp/core/constants.dart';
import 'package:netflixapp/presentation/widgets/app_bar_widget.dart';

class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({Key? key}) : super(key: key);
  final _widgetList = [
    const _SmartDownloads(),
    Section2(),
    const Section3(),
  ];
  @override
  Widget build(BuildContext context) {
    // final Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: AppBarWidget(
              title: 'Downloads',
            )),
        body: ListView.separated(
          padding: const EdgeInsets.all(10),
          itemBuilder: (ctx, index) => _widgetList[index],
          separatorBuilder: (ctx, index) => const SizedBox(
            height: 25,
          ),
          itemCount: _widgetList.length,
        ));
  }
}

// ignore: must_be_immutable
class Section2 extends StatelessWidget {
  Section2({Key? key}) : super(key: key);
  // List imageurl = [
  //   'https://www.themoviedb.org/t/p/w220_and_h330_face/qJRB789ceLryrLvOKrZqLKr2CGf.jpg',
  //   'https://www.themoviedb.org/t/p/w220_and_h330_face/74kkM7E5IymHl7ZS4XugP6YT3zU.jpg',
  //   'https://www.themoviedb.org/t/p/w220_and_h330_face/rJHC1RUORuUhtfNb4Npclx0xnOf.jpg'
  // ];
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      BlocProvider.of<DownloadsBloc>(context)
          .add(const DownloadsEvent.getDownloadsImage());
    });
    // BlocProvider.of<DownloadsBloc>(context)
    //     .add(const DownloadsEvent.getDownloadsImage());
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        const Text(
          'Introducing Dowloads for you',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: colorWhite, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        kHeight,
        const Text(
          "We will download a personalozed selection of movies for you,so there's\n always something to watch on your\n device",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16, color: Colors.grey),
        ),
        BlocBuilder<DownloadsBloc, DownloadsState>(
          builder: (context, state) {
            return SizedBox(
              width: size.width,
              height: size.height * 0.5,
              child: state.isLoading
                  ? const Center(child: CircularProgressIndicator())
                  : Stack(alignment: Alignment.center, children: [
                      Center(
                        child: CircleAvatar(
                          radius: size.width * 0.4,
                          backgroundColor: Colors.grey.withOpacity(.5),
                        ),
                      ),
                      DownloadsImageWidget(
                        imageurl:
                            'https://image.tmdb.org/t/p/w500${state.downloads?[2].posterPath}',
                        margin: const EdgeInsets.only(left: 170, top: 50),
                        angle: 25,
                        width: size.width * 0.35,
                        height: size.width * 0.55,
                      ),
                      DownloadsImageWidget(
                        imageurl:
                            'https://image.tmdb.org/t/p/w500${state.downloads?[1].posterPath}',
                        margin: const EdgeInsets.only(right: 170, top: 50),
                        angle: -25,
                        width: size.width * 0.35,
                        height: size.width * 0.55,
                      ),
                      DownloadsImageWidget(
                        imageurl:
                            'https://image.tmdb.org/t/p/w500${state.downloads?[0].posterPath}',
                        margin: const EdgeInsets.only(bottom: 25, top: 50),
                        width: size.width * 0.4,
                        height: size.width * 0.65,
                        radius: 8,
                      ),
                    ]),
            );
          },
        ),
      ],
    );
  }
}

class Section3 extends StatelessWidget {
  const Section3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: MaterialButton(
            onPressed: () {},
            color: kButtonBlue,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'Set up',
                style: TextStyle(
                    color: colorWhite,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        kHeight,
        MaterialButton(
          onPressed: () {},
          color: kButtonWhite,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'See what you can Download ',
              style: TextStyle(
                  color: kBlackColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
        )
      ],
    );
  }
}

class _SmartDownloads extends StatelessWidget {
  const _SmartDownloads({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Icon(
          Icons.settings,
          color: colorWhite,
        ),
        kWidth,
        Text('Smart Downloads')
      ],
    );
  }
}

class DownloadsImageWidget extends StatelessWidget {
  const DownloadsImageWidget({
    Key? key,
    required this.imageurl,
    this.angle = 0,
    required this.margin,
    required this.height,
    required this.width,
    this.radius = 10,
  }) : super(key: key);

  final String imageurl;
  final double angle;
  final EdgeInsets margin;
  final double width;
  final double height;
  final double radius;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: Transform.rotate(
        angle: angle * pi / 180,
        child: Container(
          // margin: margin,
          width: width,
          height: height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: kBlackColor,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(imageurl),
            ),
          ),
        ),
      ),
    );
  }
}
