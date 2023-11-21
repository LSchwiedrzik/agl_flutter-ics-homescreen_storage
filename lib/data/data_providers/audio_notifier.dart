import 'package:flutter_ics_homescreen/export.dart';

class AudioNotifier extends StateNotifier<Audio> {
  AudioNotifier(super.state);

  void resetToDefaults() {
    state = state.copyWith(treble: 5.0, bass: 5.0, rearFront: 5.0);
  }

  void setTreble(double newVal) {
    state = state.copyWith(treble: newVal);
  }

  void setBass(double newVal) {
    state = state.copyWith(bass: newVal);
  }

  void setRearFront(double newVal) {
    state = state.copyWith(rearFront: newVal);
  }
}

