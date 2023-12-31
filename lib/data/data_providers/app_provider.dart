import 'package:flutter_ics_homescreen/data/data_providers/hybrid_notifier.dart';
import 'package:flutter_ics_homescreen/data/data_providers/signal_notifier.dart';
import 'package:flutter_ics_homescreen/data/data_providers/time_notifier.dart';
import 'package:flutter_ics_homescreen/data/data_providers/units_notifier.dart';
import 'package:flutter_ics_homescreen/data/data_providers/audio_notifier.dart';
import 'package:flutter_ics_homescreen/data/data_providers/users_notifier.dart';
import 'package:flutter_ics_homescreen/data/data_providers/radio_notifier.dart';
import 'package:flutter_ics_homescreen/data/data_providers/val_client.dart';
import 'package:flutter_ics_homescreen/data/data_providers/app_launcher.dart';
import 'package:flutter_ics_homescreen/data/data_providers/radio_client.dart';
import 'package:flutter_ics_homescreen/export.dart';

import '../models/users.dart';
import 'vehicle_notifier.dart';

enum AppState {
  home,
  dashboard,
  hvac,
  apps,
  media,
  settings,
  splash,
  dateTime,
  bluetooth,
  wifi,
  wired,
  audioSettings,
  profiles,
  newProfile,
  units,
  versionInfo,
  weather,
  distanceUnit,
  tempUnit,
  clock,
  date,
  time,
  year
}

final appProvider = StateProvider<AppState>((ref) => AppState.splash);

final valClientProvider = Provider((ref) {
  KuksaConfig config = ref.watch(appConfigProvider).kuksaConfig;
  return ValClient(config: config, ref: ref);
});

final appLauncherProvider = Provider((ref) {
  return AppLauncher(ref: ref);
});

final appLauncherListProvider =
    NotifierProvider<AppLauncherList, List<AppLauncherInfo>>(
        AppLauncherList.new);

final radioClientProvider = Provider((ref) {
  RadioConfig config = ref.watch(appConfigProvider).radioConfig;
  return RadioClient(config: config, ref: ref);
});

final vehicleProvider =
    NotifierProvider<VehicleNotifier, Vehicle>(VehicleNotifier.new);

final signalsProvider = StateNotifierProvider<SignalNotifier, Signals>((ref) {
  return SignalNotifier(const Signals.initial());
});

final unitStateProvider = StateNotifierProvider<UnitsNotifier, Units>((ref) {
  return UnitsNotifier(const Units.initial());
});

final audioStateProvider =
    NotifierProvider<AudioStateNotifier, AudioState>(AudioStateNotifier.new);

final radioStateProvider =
    NotifierProvider<RadioStateNotifier, RadioState>(RadioStateNotifier.new);

final usersProvider = StateNotifierProvider<UsersNotifier, Users>((ref) {
  return UsersNotifier(Users.initial());
});

final hybridStateProvider =
    StateNotifierProvider<HybridNotifier, Hybrid>((ref) {
  return HybridNotifier(const Hybrid.initial());
});

final currentTimeProvider =
    StateNotifierProvider<CurrentTimeNotifier, DateTime>((ref) {
  return CurrentTimeNotifier();
});
