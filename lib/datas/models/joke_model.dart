import 'package:json_annotation/json_annotation.dart';

part 'joke_model.g.dart';

@JsonSerializable(explicitToJson: true)
class Joke {
  Joke({
    required this.error,
    required this.category,
    required this.type,
    required this.setup,
    required this.delivery,
    required this.flags,
    required this.id,
    required this.safe,
    required this.lang,
  });

  final bool error;
  final String category;
  final String type;
  final String setup;
  final String delivery;
  final Flags flags;
  final int id;
  final bool safe;
  final String lang;

  factory Joke.fromJson(Map<String, dynamic> json) => _$JokeFromJson(json);

  Map<String, dynamic> toJson() => _$JokeToJson(this);
}

@JsonSerializable()
class Flags {
  Flags({
    required this.nsfw,
    required this.religious,
    required this.political,
    required this.racist,
    required this.sexist,
    required this.explicit,
  });

  final bool nsfw;
  final bool religious;
  final bool political;
  final bool racist;
  final bool sexist;
  final bool explicit;

  factory Flags.fromJson(Map<String, dynamic> json) => _$FlagsFromJson(json);

  Map<String, dynamic> toJson() => _$FlagsToJson(this);
}
