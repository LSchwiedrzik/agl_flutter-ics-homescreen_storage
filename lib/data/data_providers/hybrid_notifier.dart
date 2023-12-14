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

  void updateHybridState(double speed, double engineSpeed, bool brake) {
    // Variable to store the current state
    HybridState currentState = state.hybridState;

    // Variable to store the previous state
    HybridState previousState = currentState;

    // Variable to store the average speed value
    double avgSpeed = 0.0;

    // Variable for storing the average value of RPM
    double avgRpm = 0.0;

 
    if (speed == 0 && engineSpeed == 0) {
      // Set idle state.
      currentState = HybridState.idle;
    } else if (engineSpeed > 0 && speed > 0) {
      // Set stan na engine output state..
      currentState = HybridState.engineOutput;
    } else if (speed < 0 && brake) {
      // Set  regenerative breaking state
      currentState = HybridState.regenerativeBreaking;
    } else if (speed > 0 && engineSpeed <= 0) {
      // Set battery output state
      currentState = HybridState.baterryOutput;
    }

    // Update hybrid state
    if (currentState != previousState) {
      //state = state.copyWith(hybridState: currentState);
      setHybridState(currentState);
    }
  }
}
