import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflixapp/application/search/search_bloc.dart';
import 'package:netflixapp/core/constants.dart';
import 'package:netflixapp/presentation/search/widget/title.dart';

//const imgurl= 'https://www.themoviedb.org/t/p/w220_and_h330_face/qJRB789ceLryrLvOKrZqLKr2CGf.jpg';
class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTextTitle(title: "Movies & TV"),
        kHeight,
        Expanded(
          child: BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              return GridView.count(
                crossAxisCount: 3,
                shrinkWrap: true,
                childAspectRatio: 1 / 1.4,
                mainAxisSpacing: 5,
                crossAxisSpacing: 5,
                children: List.generate(20, (index) {
                  final movie=state.searchResultList[index];

                  return  MainCard(imageUrl: movie.posterImageUrl,);
                }),
              );
            },
          ),
        )
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  final String imageUrl;
  const MainCard({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          image: DecorationImage(
              image: NetworkImage(
                imageUrl,
              ),
              fit: BoxFit.cover)),
    );
  }
}
