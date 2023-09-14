import 'package:flutter/material.dart';

import '../models/movie.dart';

class DetailPage extends StatelessWidget {
  final Movie movie;

  const DetailPage({Key? key, required this.movie}) : super(key: key);

  static const IconData star = IconData(0xe5f9, fontFamily: 'MaterialIcons');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Column(children: [
            Stack(children: [
              Image.network(
                "https://image.tmdb.org/t/p/w500${movie.posterPath}",
                width: double.infinity,
                fit: BoxFit.fill,
                height: 420,
              ),
              IconButton(
                icon: const Icon(Icons.arrow_back_ios),
                iconSize: 24,
                color: Colors.white,
                padding: const EdgeInsets.only(left: 24, top: 24),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              Card(
                margin: const EdgeInsets.only(top: 280),
                elevation: 0,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24),
                        bottomRight: Radius.zero,
                        bottomLeft: Radius.zero)),
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: SizedBox(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 230,
                          child: Text(
                            movie.originalTitle.toString(),
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Icon(
                              star,
                              color: Colors.black,
                              size: 16.0,
                              semanticLabel: 'Rating Movie',
                            ),
                            Text(
                              " ${movie.voteAverage}/10.0 IMDb",
                              style: const TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Icon(
                              Icons.language,
                              color: Colors.black,
                              size: 16.0,
                              semanticLabel: 'Language Movie',
                            ),
                            Text(
                              " ${movie.originalLanguage}",
                              style: const TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.remove_red_eye_outlined,
                              color: Colors.black,
                              size: 16.0,
                              semanticLabel: 'Popularity',
                            ),
                            Text(
                              " 808.000",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Icon(
                              Icons.date_range,
                              color: Colors.black,
                              size: 16.0,
                              semanticLabel: 'Release Date',
                            ),
                            Text(
                              " ${movie.releaseDate.toString()}",
                              style: const TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        const Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Description",
                                textDirection: TextDirection.ltr,
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              )
                            ]),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          movie.overview.toString(),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ]),
          ]),
        ),
      ),
    );
  }
}
