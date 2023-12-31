import 'package:flutter_ics_homescreen/data/data_providers/radio_presets_provider.dart';
import 'package:flutter_ics_homescreen/export.dart';
import 'radio_player_controls.dart';
import 'radio_preset_table.dart';
import 'segmented_buttons.dart';

class RadioPlayer extends ConsumerStatefulWidget {
  const RadioPlayer({super.key});

  @override
  ConsumerState<RadioPlayer> createState() => _RadioPlayerState();
}

class _RadioPlayerState extends ConsumerState<RadioPlayer> {
  String selectedNav = "Standard";
  List<String> navItems = [
    "Standard",
    "HD",
  ];
  String tableName = "Presets";
  late List<RadioPreset> presets;
  late String selectedPreset;

  @override
  void initState() {
    presets = ref.read(radioPresetsProvider).fmPresets;
    if (presets.isNotEmpty) {
      selectedPreset = presets.first.name;
    } else {
      selectedPreset = "";
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double fmSignalHeight = 460;
    double fmSignalWidth = 460;

    return Container(
      padding: const EdgeInsets.only(left: 7, right: 7),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SegmentedButtons(
            navItems: navItems,
            selectedNav: selectedNav,
          ),
          const SizedBox(
            height: 32,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/AlbumArtFM.png",
                width: fmSignalWidth,
                height: fmSignalHeight,
              )
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Column(
            children: [
              const RadioPlayerControls(),
              const SizedBox(
                height: 70,
              ),
              RadioPresetTable(
                  presets: presets,
                  selectedPreset: selectedPreset,
                  tableName: tableName),
            ],
          )
        ],
      ),
    );
  }
}
