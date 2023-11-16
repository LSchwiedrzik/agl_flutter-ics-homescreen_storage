// ignore_for_file: unused_local_variable

import '../../export.dart';

class HybridNotifier extends StateNotifier<Hybrid> {
  HybridNotifier(super.state);

  void setHybridState(HybridState hybridState) {
    switch (hybridState) {
      case HybridState.idle:
        state = state.copyWith(
          topArrowState: ArrowState.blue,
          leftArrowState: ArrowState.blue,
          rightArrowState: ArrowState.blue,
          batteryState: BatteryState.white,
        );
        break;
      case HybridState.engineOutput:
        state = state.copyWith(
          topArrowState: ArrowState.red,
          leftArrowState: ArrowState.red,
          rightArrowState: ArrowState.blue,
          batteryState: BatteryState.red,
        );
        break;
      case HybridState.regenerativeBreaking:
        state = state.copyWith(
            topArrowState: ArrowState.blue,
            leftArrowState: ArrowState.blue,
            rightArrowState: ArrowState.green,
            batteryState: BatteryState.green);

        break;
      case HybridState.baterryOutput:
        state = state.copyWith(
            topArrowState: ArrowState.blue,
            leftArrowState: ArrowState.blue,
            rightArrowState: ArrowState.yellow,
            batteryState: BatteryState.yellow);
        break;
      default:
    }
    state = state.copyWith(hybridState: hybridState);
  }

  void updateHybridState() {
    // Variable to store the current state
    HybridState currentState = state.hybridState;

    // Variable to store the previous state
    HybridState previousState = currentState;

    // Variable to store the average speed value
    double avgSpeed = 0.0;

    // Variable for storing the average value of RPM
    double avgRpm = 0.0;

    // Variable to store the brake value state
    bool brake = false;

    // Collect 10 samples
    for (int i = 0; i < 10; i++) {
      // Get the current values for speed, engine rpm and brake status

      // speed = vehicleProvider();
      // rpm = _rpmFromServer();
      // brake = _brakeFromServer();

      // Calculate the average speed value
      // avgSpeed = (avgSpeed * (i + 1) + speed) / (i + 2);

      // Calculate the average engine rpm
      // avgRpm = (avgRpm * (i + 1) + rpm) / (i + 2);
    }

    // define new state
    // if (avgSpeed == 0 && avgRpm == 0) {
    //   currentState = HybridState.idle;
    // } else if (avgRpm > 0 && avgSpeed > 0) {
    //   currentState = HybridState.engineOutput;
    // } else if (avgRpm == 0 && brake) {
    //   currentState = HybridState.regenerativeBreaking;
    // } else if (avgSpeed > 0 && avgRpm <= avgSpeed) {
    //   currentState = HybridState.baterryOutput;
    // }

    // Update hybrid state
    if (currentState != previousState) {
      state = state.copyWith(hybridState: currentState);
    }
  }
}
