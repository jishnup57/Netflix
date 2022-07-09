import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflixapp/domain/core/failures/main_failure.dart';
import 'package:netflixapp/domain/downloads/i_downloads_repo.dart';
import 'package:netflixapp/domain/downloads/models/downloads.dart';
import 'package:netflixapp/domain/search/search_service.dart';

import '../../domain/search/model/search_resp/search_resp.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final IDownloadsRepo _downloadService;
  final SearchService _searchService;
  SearchBloc(this._searchService, this._downloadService)
      : super(SearchState.inital()) {
/*
idle state
*/
    on<Initialize>((event, emit) async {
      if (state.idleList.isNotEmpty) {
        emit(SearchState(
          searchResultList: [],
          idleList: state.idleList,
          isLoading: false,
          isError: false,
        ));
        return;
      }

      //get trending
      final _result = await _downloadService.getDownloadsImages();
      final _state = _result.fold(
        (MainFailure f) {
          return const SearchState(
            searchResultList: [],
            idleList: [],
            isLoading: false,
            isError: true,
          );
        },
        (List<Downloads> list) {
          return SearchState(
            searchResultList: [],
            idleList: list,
            isLoading: false,
            isError: false,
          );
        },
      );
      // show to ui
      emit(_state);
    });
/*
search result state
*/
    on<SearchMovie>((event, emit) {
      // call search movie api
      _searchService.searchMovies(movieQuery: event.movieQuery);
      // show to ui
    });
  }
}
