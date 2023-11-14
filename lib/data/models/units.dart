import '../../export.dart';

enum DistanceUnit { kilometers, miles }

enum TemperatureUnit { celsius, fahrenheit }

@immutable
class Units {
  final DistanceUnit distanceUnit;
  final TemperatureUnit temperatureUnit;

  const Units(
    this.distanceUnit,
    this.temperatureUnit,
  );
  const Units.initial()
      : distanceUnit = DistanceUnit.kilometers,
        temperatureUnit = TemperatureUnit.celsius;

  Units copyWith({
    DistanceUnit? distanceUnit,
    TemperatureUnit? temperatureUnit,
  }) {
    return Units(
      distanceUnit ?? this.distanceUnit,
      temperatureUnit ?? this.temperatureUnit,
    );
  }

  @override
  String toString() =>
      'Units(distanceUnit: $distanceUnit, temperatureUnit: $temperatureUnit)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Units &&
        other.distanceUnit == distanceUnit &&
        other.temperatureUnit == temperatureUnit;
  }

  @override
  int get hashCode => distanceUnit.hashCode ^ temperatureUnit.hashCode;
}
