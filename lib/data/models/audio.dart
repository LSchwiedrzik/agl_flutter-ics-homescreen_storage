import 'dart:convert';

import 'package:flutter_ics_homescreen/export.dart';

@immutable
class Audio {
  final double volume;
  final double balance;
  final double fade;
  final double treble;
  final double bass;
  const Audio({
    required this.volume,
    required this.balance,
    required this.fade,
    required this.treble,
    required this.bass,
  });

  const Audio.initial()
      : volume = 5.0,
        balance = 5.0,
        fade = 5.0,
        treble = 5.0,
        bass = 5.0;
  

  Audio copyWith({
    double? volume,
    double? balance,
    double? fade,
    double? treble,
    double? bass,
  }) {
    return Audio(
      volume: volume ?? this.volume,
      balance: balance ?? this.balance,
      fade: fade ?? this.fade,
      treble: treble ?? this.treble,
      bass: bass ?? this.bass,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'volume': volume,
      'balance': balance,
      'fade': fade,
      'treble': treble,
      'bass': bass,
    };
  }

  factory Audio.fromMap(Map<String, dynamic> map) {
    return Audio(
      volume: map['volume']?.toDouble() ?? 0.0,
      balance: map['balance']?.toDouble() ?? 0.0,
      fade: map['fade']?.toDouble() ?? 0.0,
      treble: map['treble']?.toDouble() ?? 0.0,
      bass: map['bass']?.toDouble() ?? 0.0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Audio.fromJson(String source) => Audio.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Audio(volume: $volume, balance: $balance, fade: $fade, treble: $treble, bass: $bass)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Audio &&
        other.volume == volume &&
        other.balance == balance &&
        other.fade == fade &&
        other.treble == treble &&
        other.bass == bass;
  }

  @override
  int get hashCode {
    return volume.hashCode ^
        balance.hashCode ^
        fade.hashCode ^
        treble.hashCode ^
        bass.hashCode;
  }
}
