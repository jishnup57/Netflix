import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/downloads/i_downloads_repo.dart';
import '../../domain/downloads/models/downloads.dart';

part 'fast_laugh_event.dart';
part 'fast_laugh_state.dart';
part 'fast_laugh_bloc.freezed.dart';

final dummyVideoUrls = [
  "https://assets.mixkit.co/videos/preview/mixkit-photo-session-of-a-girl-in-the-desert-34405-large.mp4",
  "https://assets.mixkit.co/videos/preview/mixkit-man-runs-past-ground-level-shot-32809-large.mp4",
  "https://assets.mixkit.co/videos/preview/mixkit-father-and-his-little-daughter-eating-marshmallows-in-nature-39765-large.mp4",
  "https://assets.mixkit.co/videos/preview/mixkit-portrait-of-a-woman-in-a-pool-1259-large.mp4",
  "https://assets.mixkit.co/videos/preview/mixkit-woman-decorates-christmas-tree-at-home-2721-large.mp4",
];
ValueNotifier<Set<int>> likedVideosIdsNotifier = ValueNotifier({});

@injectable
class FastLaughBloc extends Bloc<FastLaughEvent, FastLaughState> {
  FastLaughBloc(
    IDownloadsRepo _downloadService,
  ) : super(FastLaughState.initial()) {
    on<Initialize>((event, emit) async {
      //sending Loading to ui
      emit(FastLaughState(
        videoList: [],
        isLoading: true,
        isError: false,
      ));
      //get trending movies
      final _result = await _downloadService.getDownloadsImages();
      final _state = _result.fold((l) {
        FastLaughState(
          videoList: [],
          isLoading: false,
          isError: true,
        );
      },
          (resp) => FastLaughState(
                videoList: resp,
                isLoading: false,
                isError: false,
              ));
      //send to ui
      emit(_state!);
    });

    on<LikeVideo>((event, emit) async {
      likedVideosIdsNotifier.value.add(event.id);
      likedVideosIdsNotifier.notifyListeners();
    });

    on<UnlikeVideo>((event, emit) async {
      likedVideosIdsNotifier.value.remove(event.id);
      likedVideosIdsNotifier.notifyListeners();
    });
  }
}
