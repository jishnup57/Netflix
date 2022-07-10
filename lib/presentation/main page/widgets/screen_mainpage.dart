import 'package:flutter/material.dart';
import 'package:netflixapp/presentation/Home/screen_home.dart';
import 'package:netflixapp/presentation/downloads/widgets/screen_dwonloads.dart';
import 'package:netflixapp/presentation/fastlaugh/screen_fast_laugh.dart';
import 'package:netflixapp/presentation/main%20page/widgets/bottom_nav_bar.dart';
import 'package:netflixapp/presentation/new&hot/screen_new_and_hot.dart';
import 'package:netflixapp/presentation/search/screen_search.dart';

class ScreenMainPage extends StatelessWidget {
   ScreenMainPage({Key? key}) : super(key: key);
  final _pages=[
   const ScreenHome(),
   const ScreenNewandHot(),
   const ScreenFastLaugh(),
    ScreenSearch(),
    ScreenDownloads()
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: indexChangeNotifier,
          builder: (BuildContext ctx, int newValue, Widget?_){
            return _pages[newValue];
          },
        ),
      ),
      bottomNavigationBar:const BottomNavigationWidgets(),
    );
  }
}
