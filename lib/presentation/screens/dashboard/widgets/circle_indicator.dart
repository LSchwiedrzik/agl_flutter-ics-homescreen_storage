import 'package:flutter_ics_homescreen/export.dart';

import 'custom_circle.dart';

class RPMProgressIndicator extends ConsumerStatefulWidget {
  const RPMProgressIndicator({super.key});

  @override
  RPMProgressIndicatorState createState() => RPMProgressIndicatorState();
}

class RPMProgressIndicatorState extends ConsumerState<RPMProgressIndicator>
    with TickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(
      /// [AnimationController]s can be created with `vsync: this` because of
      /// [TickerProviderStateMixin].
      vsync: this,
      duration: const Duration(seconds: 5),
    )..addListener(() {
        //setState(() {});
      });
    controller.repeat(reverse: true);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final rpm =
        ref.watch(vehicleProvider.select((vehicle) => vehicle.engineSpeed));
    return Column(
      children: [
        SizedBox(
          height: 252,
          child: Stack(
            alignment: Alignment.center,
            children: [
            
              Text(
                rpm.toString(),
                style: GoogleFonts.brunoAce(
                  textStyle: const TextStyle(color: Colors.white, fontSize: 44),
                ),
              ),
              Stack(
                children: [
                  if (rpm > 6500)
                    SizedBox(
                      height: 200,
                      width: 200,
                      child: CircularProgressIndicator(
                        strokeWidth: 12,
                        backgroundColor: Colors.transparent,
                        //value: controller.value,
                        valueColor: const AlwaysStoppedAnimation<Color>(
                            AGLDemoColors.redProgressStrokeColor),
                        value: rpm * (1 / maxRpm),
                      ),
                    ),
                  SizedBox(
                    height: 200,
                    width: 200,
                    child: CircularProgressIndicator(
                      strokeWidth: 12,
                      backgroundColor: Colors.transparent,
                      //value: controller.value,
                      valueColor: const AlwaysStoppedAnimation<Color>(
                          AGLDemoColors.jordyBlueColor),
                      value: rpm >= 6500
                          ? 6500 * (1 / maxRpm)
                          : rpm * (1 / maxRpm),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 220,
                width: 220,
                child: CustomPaint(
                  foregroundPainter: CirclePainter(
                    value: rpm.toDouble(),
                    maxValue: maxRpm.toDouble(),
                    isRPM: true,
                  ),
                ),
              ),
            ],
          ),
        ),
        const Text(
          'RPM',
          style: TextStyle(color: Colors.white, fontSize: 40),
        ),
      ],
    );
  }
}



class SpeedProgressIndicator extends ConsumerStatefulWidget {
  const SpeedProgressIndicator({super.key});

  @override
  SpeedProgressIndicatorState createState() => SpeedProgressIndicatorState();
}

class SpeedProgressIndicatorState extends ConsumerState<SpeedProgressIndicator>
    with TickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(
      /// [AnimationController]s can be created with `vsync: this` because of
      /// [TickerProviderStateMixin].
      vsync: this,
      duration: const Duration(seconds: 5),
    )..addListener(() {
        //setState(() {});
      });
    controller.repeat(reverse: true);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final speed = ref.watch(vehicleProvider.select((vehicle) => vehicle.speed));
    final unit =
        ref.watch(unitStateProvider.select((unit) => unit.distanceUnit));
    return Column(
      children: [
        
        SizedBox(
          height: 252,
          child: Stack(
            alignment: Alignment.center,
            children: [
              
              Text(
                unit == DistanceUnit.kilometers
                    ? speed.toStringAsFixed(0)
                    : (speed * 1.609).toStringAsFixed(0),
                style: GoogleFonts.brunoAce(
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 44,
                  ),
                ),
              ),
              SizedBox(
                height: 200,
                width: 200,
                child: CircularProgressIndicator(
                  strokeWidth: 12,
                  //backgroundColor: const Color(0xFF2962FF),
                  //value: controller.value,
                  value: unit == DistanceUnit.kilometers
                      ? speed * (1 / maxSpeed)
                      : (speed * (1 / maxSpeed) * 1.609), 
                  semanticsLabel: 'Speed progress indicator',
                ),
              ),
              SizedBox(
                height: 220,
                width: 220,
                child: CustomPaint(
                  foregroundPainter:
                      CirclePainter(value: speed, maxValue: maxSpeed),
                ),
              ),
            ],
          ),
          
        ),
        Text(
          unit == DistanceUnit.kilometers ? 'Km/h' : 'Mph',
          style: const TextStyle(color: Colors.white, fontSize: 40),
        ),
      ],
    );
  }
}

class FuelProgressIndicator extends ConsumerStatefulWidget {
  const FuelProgressIndicator({super.key});

  @override
  FuelProgressIndicatorState createState() => FuelProgressIndicatorState();
}

class FuelProgressIndicatorState extends ConsumerState<FuelProgressIndicator>
    with TickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(
      /// [AnimationController]s can be created with `vsync: this` because of
      /// [TickerProviderStateMixin].
      vsync: this,
      duration: const Duration(seconds: 5),
    )..addListener(() {
        //setState(() {});
      });
    controller.repeat(reverse: true);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final fuelLevel =
        ref.watch(vehicleProvider.select((vehicle) => vehicle.fuelLevel));
    return Column(
      children: [
        SizedBox(
          height: 252,
          child: Stack(
            alignment: Alignment.center,
            children: [
            
              Text(
                '${(fuelLevel * (1 / maxFuelLevel) * 100).toStringAsFixed(0)}%',
                style: GoogleFonts.brunoAce(
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 44,
                  ),
                ),
              ),
              Stack(
                children: [
                  SizedBox(
                    height: 200,
                    width: 200,
                    child: CircularProgressIndicator(
                      strokeWidth: 12,
                      backgroundColor: Colors.transparent,
                      value: fuelLevel >= 12
                          ? 12 * (1 / maxFuelLevel)
                          : fuelLevel * (1 / maxFuelLevel),
                      valueColor: const AlwaysStoppedAnimation<Color>(
                          AGLDemoColors.redProgressStrokeColor),
                    ),
                  ),
                  if (fuelLevel > 12)
                    SizedBox(
                      height: 200,
                      width: 200,
                      child: CircularProgressIndicator(
                        strokeWidth: 12,
                        backgroundColor: Colors.transparent,
                        //value: controller.value,
                        valueColor: const AlwaysStoppedAnimation<Color>(
                            AGLDemoColors.jordyBlueColor),
                        value: fuelLevel * (1 / maxFuelLevel),
                      ),
                    ),
                    
                ],
              ),
              SizedBox(
                height: 220,
                width: 220,
                child: CustomPaint(
                  foregroundPainter: CirclePainter(
                      value: fuelLevel.toDouble(),
                      maxValue: maxFuelLevel,
                      isFuel: true,
                      isRPM: false),
                ),
              ),
            ],
          ),
        ),
        const Text(
          'Fuel',
          style: TextStyle(color: Colors.white, fontSize: 40),
        ),
      ],
    );
  }
}

