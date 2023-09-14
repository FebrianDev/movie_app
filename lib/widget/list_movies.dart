import 'package:flutter/cupertino.dart';
import 'package:movie_app/models/movie.dart';

import 'item_movie.dart';

class ListMovies extends StatefulWidget {
  final List<Movie> listMovie;

  const ListMovies(this.listMovie, {super.key});

  @override
  State<StatefulWidget> createState() => _ListMovies(listMovie);
}

class _ListMovies extends State<ListMovies> {
  final List<Movie> listMovie;

  _ListMovies(this.listMovie);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: listMovie.length > 10 ? 10 : listMovie.length,
        itemBuilder: (context, index) => ItemMovie(movie: listMovie[index]),
      ),
    );
  }
}
