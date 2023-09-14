class Movie {
  final int id;
  final String originalLanguage;
  final String originalTitle;
  final String overview;
  final double popularity;
  final String posterPath;
  final String releaseDate;
  final double voteAverage;

  Movie(this.id, this.originalLanguage, this.originalTitle, this.overview,
      this.popularity, this.posterPath, this.releaseDate, this.voteAverage);

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
        json['id'],
        json['original_language'],
        json['original_title'],
        json['overview'],
        json['popularity'],
        json['poster_path'],
        json['release_date'],
        json['vote_average']);
  }
}
