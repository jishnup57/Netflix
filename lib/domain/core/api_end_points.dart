import 'package:netflixapp/core/strings.dart';
import 'package:netflixapp/infrastructure/api_key.dart';

class ApiEndPoints {
  static const downloads = "$kBaseUrl/trending/all/day?api_key=$apiKey";
  static const search = '$kBaseUrl/search/movie?api_key=$apiKey';
  //static const search='$kBaseUrl/search/movie?api_key=$apiKey&language=en-US&query={}&page=1&include_adult=false#';

  static const hotAndNewMovie='$kBaseUrl/discover/movie?api_key=$apiKey';
  static const hotAndNewTv='$kBaseUrl/discover/tv?api_key=$apiKey';
}
