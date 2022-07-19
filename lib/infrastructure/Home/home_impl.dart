import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:netflixapp/domain/core/api_end_points.dart';
import 'package:netflixapp/domain/downloads/models/downloads.dart';

import '../../domain/hot_and_new_rep/model/hot_and_new_rep.dart';

class HomeImplimentation {
 static ValueNotifier<List<Downloads>> latestMovieNotifier = ValueNotifier([]);
  Future<void> getHotHomeMovieData() async {
    
    final response = await Dio(BaseOptions()).get(ApiEndPoints.hotAndNewMovie);
    try {
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = (response.data['results'] as List).map((e) {
          return Downloads.fromJson(e);
        });
        latestMovieNotifier.value.clear();
        latestMovieNotifier.value.addAll(result);
        latestMovieNotifier.notifyListeners();
        print(latestMovieNotifier.value);
      } else {
        log('server faliure');
      }
    } on DioError catch (e) {
      log(e.toString());
    } catch (e) {
      log(e.toString());
    }
  }
}
