// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'joke_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Joke _$JokeFromJson(Map<String, dynamic> json) => Joke(
      error: json['error'] as bool,
      category: json['category'] as String,
      type: json['type'] as String,
      setup: json['setup'] as String,
      delivery: json['delivery'] as String,
      flags: Flags.fromJson(json['flags'] as Map<String, dynamic>),
      id: json['id'] as int,
      safe: json['safe'] as bool,
      lang: json['lang'] as String,
    );

Map<String, dynamic> _$JokeToJson(Joke instance) => <String, dynamic>{
      'error': instance.error,
      'category': instance.category,
      'type': instance.type,
      'setup': instance.setup,
      'delivery': instance.delivery,
      'flags': instance.flags.toJson(),
      'id': instance.id,
      'safe': instance.safe,
      'lang': instance.lang,
    };

Flags _$FlagsFromJson(Map<String, dynamic> json) => Flags(
      nsfw: json['nsfw'] as bool,
      religious: json['religious'] as bool,
      political: json['political'] as bool,
      racist: json['racist'] as bool,
      sexist: json['sexist'] as bool,
      explicit: json['explicit'] as bool,
    );

Map<String, dynamic> _$FlagsToJson(Flags instance) => <String, dynamic>{
      'nsfw': instance.nsfw,
      'religious': instance.religious,
      'political': instance.political,
      'racist': instance.racist,
      'sexist': instance.sexist,
      'explicit': instance.explicit,
    };
