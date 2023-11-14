import 'package:flutter_ics_homescreen/export.dart';
import 'package:protos/protos.dart';

class VSS {
  static handleSignalUpdates(
    EntryUpdate update,
  ) {
    //final ref = ProviderContainer().read(vehicleStateProvider);
    switch (update.entry.path) {
      case VSSPath.vehicleSpeed:
        if (update.entry.value.hasFloat()) {
          //print(ref);
        }
        break;
      // case VSSPath.vehicleInsideTemperature:
      //   if (update.entry.value.hasFloat()) {
      //     ref
      //         .read(vehicleInsideTemperature.notifier)
      //         .update((state) => state = update.entry.value.float);
      //   }
      //   break;
      // case VSSPath.vehicleOutsideTemperature:
      //   if (update.entry.value.hasFloat()) {
      //     ref
      //         .read(vehicleOutSideTemperature.notifier)
      //         .update((state) => state = update.entry.value.float);
      //   }
      //   break;
      // case VSSPath.vehicleRange:
      //   if (update.entry.value.hasInt32()) {
      //     ref
      //         .read(vehicleRange.notifier)
      //         .update((state) => state = update.entry.value.uint32);
      //   }
      //   break;
      // case VSSPath.vehicleFuelLevel:
      //   if (update.entry.value.hasInt32()) {
      //     ref
      //         .read(vehicleFuelLevel.notifier)
      //         .update((state) => state = update.entry.value.uint32);
      //   }
      //   break;
      // case VSSPath.vehicleMediaVolume:
      //   if (update.entry.value.hasInt32()) {
      //     ref
      //         .read(vehicleMediaVolume.notifier)
      //         .update((state) => state = update.entry.value.uint32);
      //   }
      //   break;
      // case VSSPath.vehicleIsChildLockActiveLeft:
      //   if (update.entry.value.hasBool_12()) {
      //     ref
      //         .read(vehicleIsChildLockActiveLeft.notifier)
      //         .update((state) => state = update.entry.value.bool_12);
      //   }
      //   break;
      // case VSSPath.vehicleIsChildLockActiveRight:
      //   if (update.entry.value.hasBool_12()) {
      //     ref
      //         .read(vehicleIsChildLockActiveRight.notifier)
      //         .update((state) => state = update.entry.value.bool_12);
      //   }
      //   break;
      // case VSSPath.vehicleEngineSpeed:
      //   if (update.entry.value.hasFloat()) {
      //     ref
      //         .read(vehicleEngineSpeed.notifier)
      //         .update((state) => state = update.entry.value.float);
      //   }
      //   break;
      // case VSSPath.vehicleFrontLeftTire:
      //   if (update.entry.value.hasFloat()) {
      //     ref
      //         .read(vehicleFrontLeftTire.notifier)
      //         .update((state) => state = update.entry.value.float);
      //   }
      //   break;
      // case VSSPath.vehicleFrontRightTire:
      //   if (update.entry.value.hasFloat()) {
      //     ref
      //         .read(vehicleFrontRightTire.notifier)
      //         .update((state) => state = update.entry.value.float);
      //   }
      //   break;
      // case VSSPath.vehicleRearLeftTire:
      //   if (update.entry.value.hasFloat()) {
      //     ref
      //         .read(vehicleRearLeftTire.notifier)
      //         .update((state) => state = update.entry.value.float);
      //   }
      //   break;
      // case VSSPath.vehicleRearRightTire:
      //   if (update.entry.value.hasFloat()) {
      //     ref
      //         .read(vehicleRearRightTire.notifier)
      //         .update((state) => state = update.entry.value.float);
      //   }
      //   break;

      default:
        debugPrint("ERROR: Unexpected path ${update.entry.path}");
        break;
    }
  }
}
