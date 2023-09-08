import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:cinemapedia/infrastructure/models/moviedb/movie_details.dart';
import 'package:cinemapedia/infrastructure/models/moviedb/movie_moviedb.dart';

class MovieMapper {
  static Movie movieDBToEntity(MovieMovieDB moviedb) => Movie(
        adult: moviedb.adult,
        backdropPath: (moviedb.backdropPath != '')
            ? 'https://image.tmdb.org/t/p/w500/${moviedb.backdropPath}'
            : 'https://th.bing.com/th/id/R.4f23cc00214033cfd763a8758c308563?rik=g34m7WH166P%2fJA&riu=http%3a%2f%2fbra3.org%2fnot_found.png&ehk=mdYHaauK3wGDbbLzjetxPm8406z2bbrqp5bhz%2b0CKWA%3d&risl=&pid=ImgRaw&r=0',
        genreIds: moviedb.genreIds.map((e) => e.toString()).toList(),
        id: moviedb.id,
        originalLanguage: moviedb.originalLanguage,
        originalTitle: moviedb.originalTitle,
        overview: moviedb.overview,
        popularity: moviedb.popularity,
        posterPath: (moviedb.posterPath != '')
            ? 'https://image.tmdb.org/t/p/w500/${moviedb.posterPath}'
            : 'no-poster',
        releaseDate: moviedb.releaseDate ?? DateTime.now(),
        title: moviedb.title,
        video: moviedb.video,
        voteAverage: moviedb.voteAverage,
        voteCount: moviedb.voteCount,
      );

  static Movie movieDetailsToEntity(MovieDetails moviedb) => Movie(
        adult: moviedb.adult,
        backdropPath: (moviedb.backdropPath != '')
            ? 'https://image.tmdb.org/t/p/w500/${moviedb.backdropPath}'
            : 'https://th.bing.com/th/id/R.4f23cc00214033cfd763a8758c308563?rik=g34m7WH166P%2fJA&riu=http%3a%2f%2fbra3.org%2fnot_found.png&ehk=mdYHaauK3wGDbbLzjetxPm8406z2bbrqp5bhz%2b0CKWA%3d&risl=&pid=ImgRaw&r=0',
        genreIds: moviedb.genres.map((e) => e.name).toList(),
        id: moviedb.id,
        originalLanguage: moviedb.originalLanguage,
        originalTitle: moviedb.originalTitle,
        overview: moviedb.overview,
        popularity: moviedb.popularity,
        posterPath: (moviedb.posterPath != '')
            ? 'https://image.tmdb.org/t/p/w500/${moviedb.posterPath}'
            : 'https://th.bing.com/th/id/R.4f23cc00214033cfd763a8758c308563?rik=g34m7WH166P%2fJA&riu=http%3a%2f%2fbra3.org%2fnot_found.png&ehk=mdYHaauK3wGDbbLzjetxPm8406z2bbrqp5bhz%2b0CKWA%3d&risl=&pid=ImgRaw&r=0',
        releaseDate: moviedb.releaseDate,
        title: moviedb.title,
        video: moviedb.video,
        voteAverage: moviedb.voteAverage,
        voteCount: moviedb.voteCount,
      );
}
