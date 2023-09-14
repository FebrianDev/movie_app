import 'package:flutter/material.dart';
import 'package:movie_app/models/movie.dart';
import 'package:movie_app/pages/detail_page.dart';

class ItemMovie extends StatelessWidget {
  final Movie movie;

  const ItemMovie({Key? key, required this.movie}) : super(key: key);
  static const IconData star = IconData(0xe5f9, fontFamily: 'MaterialIcons');

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      margin: const EdgeInsets.fromLTRB(16, 8, 16, 4),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailPage(
                movie: movie,
              ),
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 12, 0),
          child: SizedBox(
            width: double.infinity,
            height: 120,
            child: Row(
              children: [
                Flexible(
                  flex: 1,
                  fit: FlexFit.loose,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      "https://image.tmdb.org/t/p/w500${movie.posterPath}",
                      width: 80,
                      height: 120,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Flexible(
                  flex: 4,
                  fit: FlexFit.tight,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 12,
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 12),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          movie.originalTitle.toString(),
                          maxLines: 2,
                          style: const TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 12),
                        alignment: Alignment.centerLeft,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Icon(
                              star,
                              color: Colors.amber,
                              size: 16.0,
                              semanticLabel: 'Rating Movie',
                            ),
                            Text(
                              " ${movie.voteAverage} / 10.0 ",
                              style: const TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w200),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 12),
                        alignment: Alignment.centerLeft,
                        child: Row(
                          children: [
                            const Icon(
                              Icons.calendar_month,
                              color: Colors.black,
                              size: 16.0,
                              semanticLabel: 'Release Date',
                            ),
                            Text(
                              " ${movie.releaseDate}",
                              style: const TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
