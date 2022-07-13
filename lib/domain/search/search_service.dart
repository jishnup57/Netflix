import 'package:dartz/dartz.dart';
import 'package:netflixapp/domain/core/failures/main_failure.dart';
import 'package:netflixapp/domain/search/model/search_resp/search_resp.dart';

abstract class SearchService {
  Future<Either<MainFailure, SearchResp>> searchMovies({
    required String movieQuery,
  });
}
