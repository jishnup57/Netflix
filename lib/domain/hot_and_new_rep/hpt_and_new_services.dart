import 'package:dartz/dartz.dart';
import 'package:netflixapp/domain/core/failures/main_failure.dart';
import 'package:netflixapp/domain/hot_and_new_rep/model/hot_and_new_rep.dart';

abstract class HotAndNewService {

  Future<Either<MainFailure,HotAndNewRep>> getHotAndNewMovieData();
  Future<Either<MainFailure,HotAndNewRep>> getHotAndNewTvData();
  
}