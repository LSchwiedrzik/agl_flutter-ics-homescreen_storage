import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_ics_homescreen/core/utils/helpers.dart';
import 'package:flutter_ics_homescreen/export.dart';
import 'package:flutter_ics_homescreen/data/data_providers/radio_presets_provider.dart';

class RadioPresetTable extends ConsumerStatefulWidget {
  const RadioPresetTable(
      {super.key,
      required this.tableName,
      required this.presets,
      required this.selectedPreset});

  final String tableName;
  final List<RadioPreset> presets;
  final String selectedPreset;

  @override
  ConsumerState<RadioPresetTable> createState() => _RadioPresetTableState();
}

class _RadioPresetTableState extends ConsumerState<RadioPresetTable> {
  bool isAudioSettingsEnabled = false;
  late String tableName;
  late List<RadioPreset> presets;
  late String selectedPreset;

  @override
  void initState() {
    tableName = widget.tableName;
    presets = widget.presets;
    selectedPreset = widget.selectedPreset;
    super.initState();
  }

  String frequencyToString(int frequency) {
    return "${(frequency / 1000000.0).toStringAsFixed(1)} MHz";
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.transparent,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      tableName,
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 40),
                    ),
                  ],
                ),
                InkWell(
                    customBorder: const CircleBorder(),
                    onTap: () {
                      setState(() {
                        isAudioSettingsEnabled = !isAudioSettingsEnabled;
                      });
                    },
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset(
                          "assets/${isAudioSettingsEnabled ? "AudioSettingsPressed.svg" : "AudioSettings.svg"}",
                          width: 48,
                        )))
              ],
            ),
            SizedBox(
              height: 325,
              child: SingleChildScrollView(
                child: Column(
                    children: presets.map((index) {
                  return Container(
                    height: 100,
                    margin: const EdgeInsets.symmetric(vertical: 4),
                    decoration: BoxDecoration(
                        border: Border(
                            left: selectedPreset == index.name
                                ? const BorderSide(
                                    color: Colors.white, width: 4)
                                : BorderSide.none),
                        gradient: LinearGradient(
                            colors: selectedPreset == index.name
                                ? [
                                    AGLDemoColors.neonBlueColor,
                                    AGLDemoColors.neonBlueColor
                                        .withOpacity(0.15)
                                  ]
                                : [
                                    Colors.black,
                                    Colors.black.withOpacity(0.20)
                                  ])),
                    child: InkWell(
                      onTap: () {
                        ref
                            .read(radioClientProvider)
                            .setFrequency(index.frequency);
                        setState(() {
                          selectedPreset = index.name;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 17, horizontal: 24),
                        child: Row(
                          children: [
                            Expanded(
                                flex: 6,
                                child: AutoSizeText(
                                  index.name,
                                  maxLines: 1,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 40,
                                      shadows: [Helpers.dropShadowRegular]),
                                )),
                            Expanded(
                                flex: 4,
                                child: Text(
                                  frequencyToString(index.frequency),
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 26,
                                      shadows: [Helpers.dropShadowRegular]),
                                ))
                          ],
                        ),
                      ),
                    ),
                  );
                }).toList()),
              ),
            ),
          ],
        ));
  }
}

class PlayListModel {
  final String songName;
  final String albumName;

  PlayListModel({required this.songName, required this.albumName});
}
