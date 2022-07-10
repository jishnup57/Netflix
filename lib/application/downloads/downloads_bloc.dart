import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflixapp/domain/core/failures/main_failure.dart';
import 'package:netflixapp/domain/downloads/i_downloads_repo.dart';
import 'package:netflixapp/domain/downloads/models/downloads.dart';

part 'downloads_event.dart';
part 'downloads_state.dart';

part 'downloads_bloc.freezed.dart';

@injectable
class DownloadsBloc extends Bloc<DownloadsEvent, DownloadsState> {
  final IDownloadsRepo _downloadsRepo;


  DownloadsBloc(this._downloadsRepo) : super(DownloadsState.inital()) {


    on<_GetDownloadsImage>((event, emit) async {
      emit(
        state.copyWith(
          isLoading: true,
          downloadsaFaliureOrSuccessOption: none(),
        ),
      );
      final Either<MainFailure, List<Downloads>> downloadsOption =
          await _downloadsRepo.getDownloadsImages();
      print('dowmloadOption data');
      log(downloadsOption.toString());
      emit(downloadsOption.fold(
          (failure) => state.copyWith(
                isLoading: false,
                downloadsaFaliureOrSuccessOption: some(
                  Left(failure),
                )
              ),
          (success) => state.copyWith(isLoading: false,
          downloads: success,
          downloadsaFaliureOrSuccessOption: Some(Right(success)))));
    });
  }
}
