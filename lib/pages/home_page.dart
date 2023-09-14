import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/state/movie_state.dart';
import 'package:movie_app/widget/search_movie.dart';

import '../widget/item_movie.dart';
import '../widget/list_movies.dart';

class HomePage extends StatelessWidget {
  final List<ItemMovie> listMovie = [];

  HomePage({Key? key}) : super(key: key);

  final MovieState _movieState = Get.put(MovieState());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 16),
            const Text(
              "List Movie",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SearchMovie(_movieState),
            Obx(
              () => _movieState.isLoading.value
                  ? const Center(child: CircularProgressIndicator())
                  : ListMovies(_movieState.listMovie),
            )
          ],
        ),
      ),
    );
  }
}
