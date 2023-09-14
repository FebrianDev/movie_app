import 'package:get/get.dart';
import 'package:movie_app/data/fetch_movie_data.dart';
import 'package:movie_app/models/movie.dart';

class MovieState extends GetxController {
  var isLoading = true.obs;
  List<Movie> listMovie = [];

  @override
  void onInit() {
    getSearchMovies("naruto");
    super.onInit();
  }

  void getSearchMovies(String search) async {
    try {
      isLoading(true);
      var movies = await FetchMovieData.getSearchMovies(search);
      var results = movies.results.cast<Map<String, dynamic>>();
      var list = results.map((data) => Movie.fromJson(data)).toList();
      listMovie = list;
    } finally {
      isLoading(false);
    }
  }
}
