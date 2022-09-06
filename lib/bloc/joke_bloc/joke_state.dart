part of 'joke_bloc.dart';

@immutable
abstract class JokeState extends Equatable {}

// event adalah input dari ui
// state adalah output ke ui

// Hanya akan ada tiga status dalam kasus ini: JokeLoadingState, JokeLoadedState, dan JokeErrorState.
// Saat Joke sedang diambil, 'JokeLoadingState' digunakan untuk menampilkan Indikator progress.
class JokeLoadingState extends JokeState {
  @override
  List<Object?> get props => [];
}

// Sebuah state dengan JokeModel adalah 'JokeLoadedState'.
// Ini akan memberikan data joke ke antarmuka pengguna.
class JokeLoadedState extends JokeState {
  final Joke joke;
  JokeLoadedState(this.joke);

  @override
  List<Object?> get props => [joke];
}

// Jika ada kesalahan yang terjadi selama fetching data, 'JokeErrorState' akan return pesan error.
class JokeErrorState extends JokeState {
  final String error;

  JokeErrorState(this.error);

  @override
  List<Object?> get props => [error];
}
