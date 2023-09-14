import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:movie_app/models/movie_response.dart';

class FetchMovieData {

  static Future<MovieResponse> getSearchMovies(String search) async {
    final response = await http.get(Uri.parse(
        'https://api.themoviedb.org/3/search/movie?api_key=bb54f8e346cdc5632fd42f0edb42f3a2&query=$search'));
    if (response.statusCode == 200) {
      return MovieResponse.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Something went wrong');
    }
  }

}
