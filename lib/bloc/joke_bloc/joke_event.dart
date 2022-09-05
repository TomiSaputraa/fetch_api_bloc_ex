part of 'joke_bloc.dart';

@immutable
abstract class JokeEvent extends Equatable {
  const JokeEvent();
}

// Event tidak lain adalah tindakan yang tidak beda (klik tombol, kirim, dll) yang dipicu/trigger oleh
// pengguna dari UI. berisi informasi tentang tindakan dan memberikannya ke Blok untuk ditangani.
// Event saat menekan tombol load new joke di views
// Dalam kasus ini, kita hanya memiliki satu klik tombol, yaitu Load New Joke
class LoadJokeEvent extends JokeEvent {
  @override
  List<Object?> get props => [];
}
