import 'package:flutter_ics_homescreen/export.dart';

import 'widget/audio_content.dart';


class AudioSettingsPage extends ConsumerWidget {
  const AudioSettingsPage({super.key});

  static Page<void> page() =>
      const MaterialPage<void>(child: AudioSettingsPage());
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Column(
        children: [
          CommonTitle(
            title: 'Audio Settings',
            hasBackButton: true,
            onPressed: () {
              context.flow<AppState>().update((state) => AppState.settings);
            },
          ),
          const Expanded(
              child: AudioContent()),
        ],
      ),
    );
  }
}

