import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game_app/bloc/joke_bloc/joke_bloc.dart';
import 'package:game_app/datas/repositories/joke_repository.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // bloc provider digunakan di dalam class view
    return BlocProvider(
      create: (context) => JokeBloc(
        RepositoryProvider.of<Repository>(context),
      )..add(LoadJokeEvent()),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("The Joke App"),
        ),
        // bloc builder digunakan didalam body widget yang akan di build
        body: BlocBuilder<JokeBloc, JokeState>(
          builder: (context, state) {
            if (state is JokeLoadingState) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if (state is JokeLoadedState) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ExpansionTile(
                      title: const Text(
                        "Joke",
                        textAlign: TextAlign.center,
                      ),
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            state.joke.setup == null
                                ? 'Data gagal di Load'
                                : state.joke.setup.toString(),
                            style: const TextStyle(fontSize: 20),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            state.joke.delivery == null
                                ? 'Coba lagi...'
                                : state.joke.delivery.toString(),
                            style: const TextStyle(fontSize: 20),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {
                        BlocProvider.of<JokeBloc>(context).add(LoadJokeEvent());
                      },
                      child: const Text("Load New Joke"),
                    )
                  ],
                ),
              );
            }
            if (state is JokeErrorState) {
              return Center(
                child: Text(state.error.toString()),
              );
            }
            return Container();
          },
        ),
      ),
    );
  }
}
