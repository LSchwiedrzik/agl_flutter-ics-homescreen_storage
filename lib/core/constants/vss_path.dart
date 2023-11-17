class VSSPath {
  static const String vehicleSpeed = 'Vehicle.Speed';
  static const String vehicleInsideTemperature =
      'Vehicle.Cabin.HVAC.AmbientAirTemperature';
  static const String vehicleOutsideTemperature =
      'Vehicle.Exterior.AirTemperature';
  static const String vehicleRange = 'Vehicle.Powertrain.FuelSystem.Range';
  static const String vehicleFuelLevel =
      'Vehicle.Powertrain.FuelSystem.RelativeLevel';
  static const String vehicleMediaVolume =
      'Vehicle.Cabin.Infotainment.Media.Volume';
  static const String vehicleIsChildLockActiveLeft =
      'Vehicle.Cabin.Door.Row1.DriverSide.IsChildLockActive';
  static const String vehicleIsChildLockActiveRight =
      'Vehicle.Cabin.Door.Row1.PassengerSide.IsChildLockActive';
  static const String vehicleEngineSpeed =
      'Vehicle.Powertrain.CombustionEngine.Speed';
  static const String vehicleFrontLeftTire =
      'Vehicle.Chassis.Axle.Row1.Wheel.Left.Tire.Pressure';
  static const String vehicleFrontRightTire =
      'Vehicle.Chassis.Axle.Row1.Wheel.Right.Tire.Pressure';
  static const String vehicleRearLeftTire =
      'Vehicle.Chassis.Axle.Row2.Wheel.Left.Tire.Pressure';
  static const String vehicleRearRightTire =
      'Vehicle.Chassis.Axle.Row2.Wheel.Right.Tire.Pressure';
  static const String vehicleIsAirConditioningActive =
      'Vehicle.Cabin.HVAC.IsAirConditioningActive';
  static const String vehicleIsFrontDefrosterActive =
      'Vehicle.Cabin.HVAC.IsFrontDefrosterActive';
  static const String vehicleIsRearDefrosterActive =
      'Vehicle.Cabin.HVAC.IsRearDefrosterActive';
  static const String vehicleIsRecirculationActive =
      'Vehicle.Cabin.HVAC.IsRecirculationActive';
  static const String vehicleFanSpeed =
      'Vehicle.Cabin.HVAC.Station.Row1.Driver.FanSpeed';
  static const String vehicleDriverTemperature =
      'Vehicle.Cabin.HVAC.Station.Row1.Driver.Temperature';
  static const String vehiclePassengerTemperature =
      'Vehicle.Cabin.HVAC.Station.Row1.Passenger.Temperature';

  List<String> getSignalsList() {
    return const [
      vehicleSpeed,
      vehicleInsideTemperature,
      vehicleOutsideTemperature,
      vehicleRange,
      vehicleFuelLevel,
      vehicleMediaVolume,
      vehicleIsChildLockActiveLeft,
      vehicleIsChildLockActiveRight,
      vehicleEngineSpeed,
      vehicleFrontLeftTire,
      vehicleFrontRightTire,
      vehicleRearLeftTire,
      vehicleRearRightTire,
      vehicleIsAirConditioningActive,
      vehicleIsFrontDefrosterActive,
      vehicleIsRearDefrosterActive,
      vehicleIsRecirculationActive,
      vehicleFanSpeed,
      vehicleDriverTemperature,
      vehiclePassengerTemperature,
    ];
  }
}
