import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game_app/presentation/pages/home_page.dart';

import 'datas/repositories/joke_repository.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.grey[900],
        backgroundColor: Colors.grey[900],
        scaffoldBackgroundColor: Colors.grey[900],
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.grey[900],
          textTheme: ButtonTextTheme.primary,
        ),
      ),
      // Untuk menyediakan JokeRepository secara global,
      // kita harus membungkus halaman Home() di sekitar RepositoryProvider di file main.dart.
      // disini kita definisikan repository provider
      home: RepositoryProvider(
        create: (context) => Repository(),
        child: const HomePage(),
      ),
    );
  }
}
