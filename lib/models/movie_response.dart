class MovieResponse {
  final List<dynamic> results;

  MovieResponse(this.results);

  factory MovieResponse.fromJson(Map<String, dynamic> json) {
    return MovieResponse(json['results']);
  }
}
