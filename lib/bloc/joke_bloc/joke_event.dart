part of 'joke_bloc.dart';

@immutable
abstract class JokeEvent extends Equatable {
  const JokeEvent();
}

// event adalah input dari ui
// state adalah output ke ui

// Event tidak lain adalah tindakan seperti (klik tombol, kirim, dll) yang dipicu/trigger oleh
// pengguna dari UI. berisi informasi tentang tindakan dan memberikannya ke Blok untuk ditangani.
// Event saat menekan tombol load new joke di views
// Dalam kasus ini, kita hanya memiliki satu klik tombol, yaitu Load New Joke
class LoadJokeEvent extends JokeEvent {
  @override
  List<Object?> get props => [];
}
