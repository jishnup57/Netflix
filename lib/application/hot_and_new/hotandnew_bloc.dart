import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflixapp/domain/core/failures/main_failure.dart';
import 'package:netflixapp/domain/hot_and_new_rep/hpt_and_new_services.dart';

import '../../domain/hot_and_new_rep/model/hot_and_new_rep.dart';

part 'hotandnew_event.dart';
part 'hotandnew_state.dart';
part 'hotandnew_bloc.freezed.dart';

@injectable
class HotandnewBloc extends Bloc<HotandnewEvent, HotandnewState> {
  final HotAndNewService _hotAndNewService;
  HotandnewBloc(this._hotAndNewService) : super(HotandnewState.initial()) {
    /*
    get hot and new movie data
     */
    on<LoadDataIncomingSoon>((event, emit) async {
      //send loading to ui
      emit(const HotandnewState(
        comingSoonList: [],
        everyOneIsWatchingList: [],
        isLoading: true,
        hasError: false,
      ));

      //get data from remote

      final _result = await _hotAndNewService.getHotAndNewMovieData();

      //data to state
         final newState= _result.fold(
        (MainFailure failure) {
          return const HotandnewState(
            comingSoonList: [],
            everyOneIsWatchingList: [],
            isLoading: false,
            hasError: true,
          );
        },
        (HotAndNewRep resp) {
          return  HotandnewState(
            comingSoonList: resp.results,
            everyOneIsWatchingList: state.everyOneIsWatchingList,
            isLoading: false,
            hasError: false,
          );
        },
      );
      emit(newState);
    });

    /*
    get hot and new tv data
     */

    on<LoadDataInEveryOneisWatching>((event, emit) {});
  }
}
