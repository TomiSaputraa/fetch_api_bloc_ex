import 'dart:convert';

import 'package:game_app/datas/models/joke_model.dart';
import 'package:http/http.dart' as http;

class Repository {
  final String _apiUrl = 'https://v2.jokeapi.dev/joke/Any';

  Future<Joke> getJoke() async {
    final response = await http.get(Uri.parse(_apiUrl));
    if (response.statusCode == 200) {
      return Joke.fromJson(json.decode(response.body));
    } else {
      throw Exception("Failed to load data");
    }
  }
}
