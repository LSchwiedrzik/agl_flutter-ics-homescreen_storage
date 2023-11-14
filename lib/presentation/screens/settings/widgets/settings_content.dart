import 'package:flutter_ics_homescreen/export.dart';

import '../../../custom_icons/custom_icons.dart';

class Settings extends StatelessWidget {
  const Settings({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      //crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const CommonTitle(
          title: 'Settings',
        ),
        Expanded(
          child: ListView(
            padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 144),
            children: [
              SettingsTile(
                  icon: Icons.calendar_month_outlined,
                  title: 'Date & Time',
                  hasSwich: false,
                  voidCallback: () async {
                    context
                        .flow<AppState>()
                        .update((next) => AppState.dateTime);
                  }),
              SettingsTile(
                  icon: Icons.bluetooth,
                  title: 'Bluetooth',
                  hasSwich: true,
                  voidCallback: () {
                    context
                        .flow<AppState>()
                        .update((next) => AppState.bluetooth);
                  }),
              SettingsTile(
                  icon: Icons.wifi,
                  title: 'Wifi',
                  hasSwich: true,
                  voidCallback: () {
                    context.flow<AppState>().update((next) => AppState.wifi);
                  }),
              SettingsTile(
                  icon: CustomIcons.wiredicon,
                  title: 'Wired',
                  hasSwich: false,
                  voidCallback: () {
                    context.flow<AppState>().update((next) => AppState.wired);
                  }),
              SettingsTile(
                  icon: Icons.tune,
                  title: 'Audio Settings',
                  hasSwich: false,
                  voidCallback: () {
                    context
                        .flow<AppState>()
                        .update((next) => AppState.audioSettings);
                  }),
              SettingsTile(
                  icon: Icons.person_2_outlined,
                  title: 'Profiles',
                  hasSwich: false,
                  voidCallback: () {
                    context
                        .flow<AppState>()
                        .update((next) => AppState.profiles);
                  }),
              SettingsTile(
                  icon: Icons.straighten,
                  title: 'Units',
                  hasSwich: false,
                  voidCallback: () {
                    context.flow<AppState>().update((next) => AppState.units);
                  }),
              SettingsTile(
                  icon: Icons.help_sharp,
                  title: 'Version Info',
                  hasSwich: false,
                  voidCallback: () {
                    context
                        .flow<AppState>()
                        .update((next) => AppState.versionInfo);
                  }),
            ],
          ),
        ),
      ],
    );
  }
}
