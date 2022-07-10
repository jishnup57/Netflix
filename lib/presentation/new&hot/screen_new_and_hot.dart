import 'package:flutter/material.dart';
import 'package:netflixapp/core/colors/colors.dart';
import 'package:netflixapp/core/constants.dart';
import 'package:netflixapp/presentation/new&hot/widgets/coming_soon_widget.dart';
import 'package:netflixapp/presentation/new&hot/widgets/everyones_watching_widget.dart';

class ScreenNewandHot extends StatelessWidget {
  const ScreenNewandHot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          child: AppBar(
            title: const Text(
              "New & Hot",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            actions: [
              const Icon(
                Icons.cast,
                size: 25,
                color: Colors.white,
              ),
              kWidth,
              LimitedBox(
                maxHeight: 30,
                child: Container(
                  width: 30,
                  height: 30,
                  color: Colors.blue,
                ),
              ),
            ],
            bottom: TabBar(
              isScrollable: true,
              tabs: const [
                Tab(
                  text: "🍿Comming Soon",
                ),
                Tab(
                  text: "🔥Everyone's Watching",
                ),
              ],
              labelColor: kBlackColor,
              labelStyle:
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              unselectedLabelColor: colorWhite,
              indicator: BoxDecoration(
                borderRadius: kRadius30,
                color: colorWhite,
              ),
              padding: const EdgeInsets.only(bottom: 8),
            ),
          ),
          preferredSize: const Size.fromHeight(90),
        ),
        body: TabBarView(
            children: [_buildComingSoon(), _buildEveryOneWatching()]),
      ),
    );
  }

  _buildComingSoon() {
    return ListView.builder(itemBuilder: (BuildContext ctx,index){
      return const ComingSoon();
    },
    itemCount: 10,
    );
    
  }

  _buildEveryOneWatching() {
    return ListView.builder(itemBuilder: (BuildContext ctx, index){
      return const EveryonesWatchingWidget();
    },
    itemCount: 10,);
  }
}

