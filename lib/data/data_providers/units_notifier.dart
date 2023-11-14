import '../../export.dart';

class UnitsNotifier extends StateNotifier<Units> {
  UnitsNotifier(super.state);

  void setDistanceUnit(DistanceUnit unit) {
    state = state.copyWith(distanceUnit: unit);
  }

  void setTemperatureUnit(TemperatureUnit unit) {
    state = state.copyWith(temperatureUnit: unit);
  }
}
