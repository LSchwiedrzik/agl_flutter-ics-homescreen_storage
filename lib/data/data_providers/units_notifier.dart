import 'package:flutter_ics_homescreen/export.dart';
import 'package:protos/val-api.dart';

import 'package:protos/storage-api.dart' as storage_api;

class UnitsNotifier extends Notifier<Units> {
  @override
  Units build() {
    return const Units.initial();
  }

  //loads Units state of the selected user from the storage API
  Future <void> loadSettingsUnits() async {
    final storageClient = ref.read(storageClientProvider);
    final userClient = ref.read(usersProvider);
    try {
      //read unit values from the selected user namespace
      final distanceResponse = await storageClient.read(storage_api.Key(key: VSSPath.vehicleHmiDistanceUnit, namespace: userClient.selectedUser.id));
      final temperatureResponse = await storageClient.read(storage_api.Key(key: VSSPath.vehicleHmiTemperatureUnit, namespace: userClient.selectedUser.id));
      final pressureResponse = await storageClient.read(storage_api.Key(key: VSSPath.vehicleHmiPressureUnit, namespace: userClient.selectedUser.id));

      //prepare state declaration and fall back to default values if the key isnt present in the storage API
      final distanceUnit = distanceResponse.result == 'MILES'
          ? DistanceUnit.miles
          : DistanceUnit.kilometers;

      final temperatureUnit = temperatureResponse.result == 'F'
          ? TemperatureUnit.fahrenheit
          : TemperatureUnit.celsius;

      final pressureUnit = pressureResponse.result == 'PSI'
          ? PressureUnit.psi
          : PressureUnit.kilopascals;

      state =  Units(distanceUnit, temperatureUnit, pressureUnit);
    } catch (e) {
      print('Error loading settings for units: $e');
      state = const Units.initial(); //Fallback to initial defaults if error occurs
    }
  }

  bool handleSignalUpdate(DataEntry entry) {
    bool handled = true;
    switch (entry.path) {
      case VSSPath.vehicleHmiDistanceUnit:
        if (entry.value.hasString()) {
          String value = entry.value.string;
          DistanceUnit unit = DistanceUnit.kilometers;
          if (value != "KILOMETERS") unit = DistanceUnit.miles;
          state = state.copyWith(distanceUnit: unit);
        }
        break;
      case VSSPath.vehicleHmiTemperatureUnit:
        if (entry.value.hasString()) {
          String value = entry.value.string;
          TemperatureUnit unit = TemperatureUnit.celsius;
          if (value != "C") unit = TemperatureUnit.fahrenheit;
          state = state.copyWith(temperatureUnit: unit);
        }
        break;
      case VSSPath.vehicleHmiPressureUnit:
        if (entry.value.hasString()) {
          String value = entry.value.string;
          PressureUnit unit = PressureUnit.kilopascals;
          if (value != "KPA") unit = PressureUnit.psi;
          state = state.copyWith(pressureUnit: unit);
        }
        break;
      default:
        handled = false;
    }
    return handled;
  }

  Future <void> setDistanceUnit(DistanceUnit unit) async {
    state = state.copyWith(distanceUnit: unit);
    var valClient = ref.read(valClientProvider);
    valClient.setString(
      VSSPath.vehicleHmiDistanceUnit,
      unit == DistanceUnit.kilometers ? "KILOMETERS" : "MILES",
      true,
    );
    //write to storage API (selected user namespace)
    var storageClient = ref.read(storageClientProvider);
    final userClient = ref.read(usersProvider);
    try {
      await storageClient.write(storage_api.KeyValue(
        key: VSSPath.vehicleHmiDistanceUnit,
        value: unit == DistanceUnit.kilometers ? 'KILOMETERS' : 'MILES',
        namespace: userClient.selectedUser.id
      ));
    } catch (e) {
      print('Error saving distance unit: $e');
    }
  }

  Future <void> setTemperatureUnit(TemperatureUnit unit) async {
    state = state.copyWith(temperatureUnit: unit);
    var valClient = ref.read(valClientProvider);
    valClient.setString(
      VSSPath.vehicleHmiTemperatureUnit,
      unit == TemperatureUnit.celsius ? "C" : "F",
      true,
    );
    //write to storage API (selected user namespace)
    var storageClient = ref.read(storageClientProvider);
    final userClient = ref.read(usersProvider);
    try {
      await storageClient.write(storage_api.KeyValue(
        key: VSSPath.vehicleHmiTemperatureUnit,
        value: unit == TemperatureUnit.celsius ? "C" : "F",
        namespace: userClient.selectedUser.id
      ));
    } catch (e) {
      print('Error saving distance unit: $e');
    }
  }

  Future <void> setPressureUnit(PressureUnit unit) async {
    state = state.copyWith(pressureUnit: unit);
    var valClient = ref.read(valClientProvider);
    valClient.setString(
      VSSPath.vehicleHmiPressureUnit,
      unit == PressureUnit.kilopascals ? "KPA" : "PSI",
      true,
    );
    //write to storage API (selected user namespace)
    var storageClient = ref.read(storageClientProvider);
    final userClient = ref.read(usersProvider);
    try {
      await storageClient.write(storage_api.KeyValue(
        key: VSSPath.vehicleHmiPressureUnit,
        value: unit == PressureUnit.kilopascals ? "KPA" : "PSI",
        namespace: userClient.selectedUser.id
      ));
    } catch (e) {
      print('Error saving distance unit: $e');
    }
  }
}
