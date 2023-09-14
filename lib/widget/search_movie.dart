import 'package:flutter/material.dart';

import '../state/movie_state.dart';

class SearchMovie extends StatefulWidget {
  final MovieState _movieState;

  const SearchMovie(this._movieState, {super.key});

  @override
  State<StatefulWidget> createState() => _SearchMovie(_movieState);
}

class _SearchMovie extends State<SearchMovie> {
  final MovieState _movieState;

  _SearchMovie(this._movieState);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 12, right: 12, top: 8),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
          ),
          labelText: 'Search Movies',
        ),
        onChanged: (value) {
          setState(
            () {
              if (value.isEmpty) {
                _movieState.getSearchMovies("naruto");
              } else {
                _movieState.getSearchMovies(value);
              }
            },
          );
        },
      ),
    );
  }
}
