import 'dart:convert';

import 'package:flutter_ics_homescreen/export.dart';

@immutable
class Signals {
  final bool isBluetoothConnected;
  final bool isDataConnected;
  final bool isWifiConnected;
  final int dataSignalStrenght;
  final int wifiSignalStrenght;
  const Signals({
    required this.isBluetoothConnected,
    required this.isDataConnected,
    required this.isWifiConnected,
    required this.dataSignalStrenght,
    required this.wifiSignalStrenght,
  });
  const Signals.initial()
      : isBluetoothConnected = false,
        isDataConnected = false,
        isWifiConnected = false,
        dataSignalStrenght = 0,
        wifiSignalStrenght = 0;

  Signals copyWith({
    bool? isBluetoothConnected,
    bool? isDataConnected,
    bool? isWifiConnected,
    int? dataSignalStrenght,
    int? wifiSignalStrenght,
  }) {
    return Signals(
      isBluetoothConnected: isBluetoothConnected ?? this.isBluetoothConnected,
      isDataConnected: isDataConnected ?? this.isDataConnected,
      isWifiConnected: isWifiConnected ?? this.isWifiConnected,
      dataSignalStrenght: dataSignalStrenght ?? this.dataSignalStrenght,
      wifiSignalStrenght: wifiSignalStrenght ?? this.wifiSignalStrenght,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'isBluetoothConnected': isBluetoothConnected,
      'isDataConnected': isDataConnected,
      'isWifiConnected': isWifiConnected,
      'dataSignalStrenght': dataSignalStrenght,
      'wifiSignalStrenght': wifiSignalStrenght,
    };
  }

  factory Signals.fromMap(Map<String, dynamic> map) {
    return Signals(
      isBluetoothConnected: map['isBluetoothConnected'] ?? false,
      isDataConnected: map['isDataConnected'] ?? false,
      isWifiConnected: map['isWifiConnected'] ?? false,
      dataSignalStrenght: map['dataSignalStrenght']?.toInt() ?? 0,
      wifiSignalStrenght: map['wifiSignalStrenght']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Signals.fromJson(String source) =>
      Signals.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Signals(isBluetoothConnected: $isBluetoothConnected, isDataConnected: $isDataConnected, isWifiConnected: $isWifiConnected, dataSignalStrenght: $dataSignalStrenght, wifiSignalStrenght: $wifiSignalStrenght)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Signals &&
        other.isBluetoothConnected == isBluetoothConnected &&
        other.isDataConnected == isDataConnected &&
        other.isWifiConnected == isWifiConnected &&
        other.dataSignalStrenght == dataSignalStrenght &&
        other.wifiSignalStrenght == wifiSignalStrenght;
  }

  @override
  int get hashCode {
    return isBluetoothConnected.hashCode ^
        isDataConnected.hashCode ^
        isWifiConnected.hashCode ^
        dataSignalStrenght.hashCode ^
        wifiSignalStrenght.hashCode;
  }
}
