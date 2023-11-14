import 'dart:convert';

import 'package:flutter_ics_homescreen/export.dart';

@immutable
class Audio {
  final double volume;
  final double treble;
  final double bass;
  final double rearFront;
  const Audio({
    required this.volume,
    required this.treble,
    required this.bass,
    required this.rearFront,
  });

  const Audio.initial()
      : volume = 5.0,
        treble = 5.0,
        bass = 5.0,
        rearFront = 5.0;
  

  Audio copyWith({
    double? volume,
    double? treble,
    double? bass,
    double? rearFront,
  }) {
    return Audio(
      volume: volume ?? this.volume,
      treble: treble ?? this.treble,
      bass: bass ?? this.bass,
      rearFront: rearFront ?? this.rearFront,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'volume': volume,
      'treble': treble,
      'bass': bass,
      'rearFront': rearFront,
    };
  }

  factory Audio.fromMap(Map<String, dynamic> map) {
    return Audio(
      volume: map['volume']?.toDouble() ?? 0.0,
      treble: map['treble']?.toDouble() ?? 0.0,
      bass: map['bass']?.toDouble() ?? 0.0,
      rearFront: map['rearFront']?.toDouble() ?? 0.0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Audio.fromJson(String source) => Audio.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Audio(volume: $volume, treble: $treble, bass: $bass, rearFront: $rearFront)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Audio &&
        other.volume == volume &&
        other.treble == treble &&
        other.bass == bass &&
        other.rearFront == rearFront;
  }

  @override
  int get hashCode {
    return volume.hashCode ^
        treble.hashCode ^
        bass.hashCode ^
        rearFront.hashCode;
  }
}
