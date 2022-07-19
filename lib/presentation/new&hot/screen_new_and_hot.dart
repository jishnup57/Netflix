import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:netflixapp/application/hot_and_new/hotandnew_bloc.dart';
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
        body: TabBarView(children: [
          ComingSoonList(
            key: Key('coming soon'),
          ),
          _buildEveryOneWatching(),
        ]),
      ),
    );
  }

  // _buildComingSoon() {
  //   return ListView.builder(
  //     itemBuilder: (BuildContext ctx, index) {
  //       return const ComingSoon();
  //     },
  //     itemCount: 10,
  //   );
  // }

  _buildEveryOneWatching() {
    return ListView.builder(
      itemBuilder: (BuildContext ctx, index) {
        return SizedBox();
        // const EveryonesWatchingWidget();
      },
      itemCount: 10,
    );
  }
}

class ComingSoonList extends StatelessWidget {
  const ComingSoonList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      BlocProvider.of<HotandnewBloc>(context).add(const LoadDataIncomingSoon());
    });
    return BlocBuilder<HotandnewBloc, HotandnewState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(
            child: CircularProgressIndicator(
              strokeWidth: 2,
            ),
          );
        } else if (state.hasError) {
          return const Center(
            child: Text('Error while loading'),
          );
        } else if (state.comingSoonList.isEmpty) {
          return const Center(
            child: Text('Comming soon list is empty'),
          );
        } else {
          return ListView.builder(
            itemBuilder: (BuildContext ctx, index) {
              final movie = state.comingSoonList[index];
              if (movie.id == null) {
                return const SizedBox();
              }
              final _date = DateTime.parse(movie.releaseDate!);

              final formatedDate = DateFormat.MMMd('en_US').format(_date);

              return ComingSoon(
                id: movie.id.toString(),
                month: formatedDate.split(' ').first.toUpperCase(),
                day: formatedDate.split(' ').last,
                posterPath: '$imageAppendUrl${movie.backdropPath}',
                movieName: movie.originalTitle ?? 'No title',
                description: movie.overview ?? 'No description',
              );
            },
            itemCount: state.comingSoonList.length,
          );
        }
      },
    );
  }
}
