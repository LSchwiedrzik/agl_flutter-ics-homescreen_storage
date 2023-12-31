import 'dart:convert';

import 'package:flutter_ics_homescreen/export.dart';

@immutable
class RadioState {
  final int freqMin;
  final int freqMax;
  final int freqStep;
  final int freqCurrent;
  final bool playing;
  final bool scanning;
  const RadioState(
      {required this.freqMin,
      required this.freqMax,
      required this.freqStep,
      required this.freqCurrent,
      required this.playing,
      required this.scanning});

  const RadioState.initial()
      : freqMin = 8790000,
        freqMax = 1083000,
        freqStep = 20000,
        freqCurrent = 8790000,
        playing = false,
        scanning = false;

  RadioState copyWith(
      {int? freqMin,
      int? freqMax,
      int? freqStep,
      int? freqCurrent,
      bool? playing,
      bool? scanning}) {
    return RadioState(
      freqMin: freqMin ?? this.freqMin,
      freqMax: freqMax ?? this.freqMax,
      freqStep: freqStep ?? this.freqStep,
      freqCurrent: freqCurrent ?? this.freqCurrent,
      playing: playing ?? this.playing,
      scanning: scanning ?? this.scanning,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'freqMin': freqMin,
      'freqMax': freqMax,
      'freqStep': freqStep,
      'freqCurrent': freqCurrent,
      'playing': playing,
      'scanning': scanning,
    };
  }

  factory RadioState.fromMap(Map<String, dynamic> map) {
    return RadioState(
      freqMin: map['freqMin']?.toInt().toUnsigned() ?? 0,
      freqMax: map['freqMax']?.toInt().toUnsigned() ?? 0,
      freqStep: map['freqStep']?.toInt().toUnsigned() ?? 0,
      freqCurrent: map['freqCurrent']?.toInt().toUnsigned() ?? 0,
      playing: map['playing']?.toBool() ?? false,
      scanning: map['scanning']?.toBool() ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory RadioState.fromJson(String source) =>
      RadioState.fromMap(json.decode(source));

  @override
  String toString() {
    return 'RadioState(freqMin: $freqMin, freqMax: $freqMax, freqStep: $freqStep, freqCurrent: $freqCurrent, playing: $playing, scanning: $scanning)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is RadioState &&
        other.freqMin == freqMin &&
        other.freqMax == freqMax &&
        other.freqStep == freqStep &&
        other.freqCurrent == freqCurrent &&
        other.playing == playing &&
        other.scanning == scanning;
  }

  @override
  int get hashCode {
    return freqMin.hashCode ^
        freqMax.hashCode ^
        freqStep.hashCode ^
        freqCurrent.hashCode ^
        playing.hashCode ^
        scanning.hashCode;
  }
}
