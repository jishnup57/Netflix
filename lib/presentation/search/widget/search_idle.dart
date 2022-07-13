import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflixapp/application/search/search_bloc.dart';
import 'package:netflixapp/core/colors/colors.dart';
import 'package:netflixapp/core/constants.dart';
import 'package:netflixapp/presentation/search/widget/title.dart';

const String imageurl =
    'https://www.themoviedb.org/t/p/w250_and_h141_face/m0ObOaJBerZ3Unc74l471ar8Iiy.jpg';

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            kHeight,
            const SearchTextTitle(title: "Top Searches"),
            kHeight,
            Expanded(
              child: BlocBuilder<SearchBloc, SearchState>(
                builder: (context, state) {
                  if (state.isLoading) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (state.isError) {
                    return const Center(
                      child: Text('Error while getting data'),
                    );
                  } else if (state.idleList.isEmpty) {
                    return const Center(
                      child: Text('List is empty'),
                    );
                  }
                  return ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (ctx, index) {
                      final movie = state.idleList[index];
                      return TopSearchItemsTile(
                        title: movie.title ?? "No title provided",
                        imageUrlfromApi: '$imageAppendUrl${movie.posterPath}',
                      );
                    },
                    separatorBuilder: (ctx, index) => kHeight20,
                    itemCount: state.idleList.length,
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TopSearchItemsTile extends StatelessWidget {
  final String title;
  final String imageUrlfromApi;
  const TopSearchItemsTile(
      {Key? key, required this.title, required this.imageUrlfromApi})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: screenwidth * 0.35,
          height: 65,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(imageUrlfromApi),
            ),
          ),
        ),
        kWidth,
        Expanded(
          child: Text(
            title,
            style: const TextStyle(
                color: colorWhite, fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
        const CircleAvatar(
          backgroundColor: colorWhite,
          radius: 27,
          child: CircleAvatar(
            backgroundColor: kBlackColor,
            radius: 25,
            child: Icon(
              CupertinoIcons.play_fill,
              color: colorWhite,
            ),
          ),
        )
      ],
    );
  }
}
