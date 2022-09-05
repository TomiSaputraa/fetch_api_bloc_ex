import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:game_app/datas/models/joke_model.dart';
import 'package:game_app/datas/repositories/joke_repository.dart';

part 'joke_event.dart';
part 'joke_state.dart';

class JokeBloc extends Bloc<JokeEvent, JokeState> {
  final Repository _repository;

  JokeBloc(this._repository) : super(JokeLoadingState()) {
    on<JokeEvent>((event, emit) async {
      emit(JokeLoadingState());

      try {
        final joke = await _repository.getJoke();
        emit(JokeLoadedState(joke));
      } catch (e) {
        emit(JokeErrorState(e.toString()));
      }
    });
  }
}
