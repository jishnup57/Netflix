part of 'hotandnew_bloc.dart';

@freezed
class HotandnewState with _$HotandnewState {
  const factory HotandnewState({
    required List<HotAndNewData> comingSoonList,
    required List<HotAndNewData> everyOneIsWatchingList,
    required bool isLoading,
    required bool hasError,
  }) = _Initial;

  factory HotandnewState.initial() =>const HotandnewState(
        comingSoonList: [],
        everyOneIsWatchingList: [],
        isLoading: false,
        hasError: false
      );
}
