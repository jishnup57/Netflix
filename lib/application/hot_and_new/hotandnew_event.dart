part of 'hotandnew_bloc.dart';

@freezed
class HotandnewEvent with _$HotandnewEvent {
  const factory HotandnewEvent.loadDataIncomingSoon() = LoadDataIncomingSoon;
  const factory HotandnewEvent.loadDataInEveryOneisWatching() = LoadDataInEveryOneisWatching;
}