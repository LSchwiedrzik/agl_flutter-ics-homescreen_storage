import 'dart:io';
import 'package:flutter_ics_homescreen/export.dart';
import 'package:yaml/yaml.dart';

class RadioPreset {
  final int frequency;
  final String name;

  RadioPreset({required this.frequency, required this.name});
}

class RadioPresets {
  final List<RadioPreset> fmPresets;

  RadioPresets({required this.fmPresets});
}

final radioPresetsProvider = Provider((ref) {
  final presetsFilename = ref.read(appConfigProvider).radioConfig.presets;
  if (presetsFilename.isEmpty) {
    return RadioPresets(fmPresets: []);
  }
  try {
    print("Reading radio presets $presetsFilename");
    var presetsFile = File(presetsFilename);
    String content = presetsFile.readAsStringSync();
    final dynamic yamlMap = loadYaml(content);

    List<RadioPreset> presets = [];
    if (yamlMap.containsKey('fm')) {
      dynamic list = yamlMap['fm'];
      if (list is YamlList) {
        for (var element in list) {
          if ((element is YamlMap) &&
              element.containsKey('frequency') &&
              element.containsKey('name')) {
            presets.add(RadioPreset(
                frequency: element['frequency'].toInt(),
                name: element['name'].toString()));
          }
        }
      }
    }
    return RadioPresets(fmPresets: presets);
  } catch (_) {
    debugPrint("Exception reading presets!");
    return RadioPresets(fmPresets: []);
  }
});
