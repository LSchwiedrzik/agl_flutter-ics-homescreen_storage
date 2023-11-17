import 'package:flutter_ics_homescreen/export.dart';

class HVAC extends ConsumerStatefulWidget {
  const HVAC({super.key});

  @override
  HVACState createState() => HVACState();
}

class HVACState extends ConsumerState<HVAC> {
  bool isFanFocusLeftTopSelected = false;
  bool isFanFocusRightTopSelected = true;
  bool isFanFocusLeftBottomSelected = true;
  bool isFanFocusRightBottomSelected = false;

  late bool isACSelected;
  bool isSYNCSelected = true;
  late bool isFrontDefrostSelected;
  bool isAutoSelected = true;
  late bool isRecirculationSelected;
  late bool isRearDefrostSelected;

  int temperatureLeft = 26;
  int temperatureRight = 26;
  @override
  void initState() {
    super.initState();
  }

  TextStyle climateControlTextStyle = GoogleFonts.raleway(
      color: AGLDemoColors.periwinkleColor,
      fontSize: 44,
      height: 1.25,
      fontWeight: FontWeight.w500,
      shadows: [
        Shadow(
            offset: const Offset(1, 2),
            blurRadius: 3,
            color: Colors.black.withOpacity(0.7))
      ]);
  TextStyle climateControlSelectedTextStyle = GoogleFonts.raleway(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 44,
      height: 1.25,
      shadows: [
        Shadow(
            offset: const Offset(1, 2),
            blurRadius: 3,
            color: Colors.black.withOpacity(0.7))
      ]);

  @override
  Widget build(BuildContext context) {
    final vehicle = ref.watch(vehicleProvider.select((vehicle) => vehicle));
    isACSelected = vehicle.isAirConditioningActive;
    isFrontDefrostSelected = vehicle.isFrontDefrosterActive;
    isRearDefrostSelected = vehicle.isRearDefrosterActive;
    isRecirculationSelected = vehicle.isRecirculationActive;
    Size size = MediaQuery.sizeOf(context);
    temperatureLeft = vehicle.driverTemperature;
    temperatureRight = vehicle.passengerTemperature;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(
          height: 83,
        ),
        Row(
          children: [
            SizedBox(
              width: size.width * 0.125,
            ),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    "Left",
                    style: TextStyle(color: Colors.white, fontSize: 40),
                    textAlign: TextAlign.center,
                  ),
                ),
                FanFocus(
                    onPressed: () {
                      setState(() {
                        isFanFocusLeftTopSelected = !isFanFocusLeftTopSelected;
                      });
                    },
                    isSelected: isFanFocusLeftTopSelected,
                    focusType: "top_half"),
                const SizedBox(
                  height: 12,
                ),
                FanFocus(
                    onPressed: () {
                      setState(() {
                        isFanFocusLeftBottomSelected =
                            !isFanFocusLeftBottomSelected;
                      });
                    },
                    isSelected: isFanFocusLeftBottomSelected,
                    focusType: "bottom_half")
              ],
            )),
            SizedBox(
              width: size.width * 0.05,
            ),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    "Right",
                    style: TextStyle(color: Colors.white, fontSize: 40),
                    textAlign: TextAlign.center,
                  ),
                ),
                FanFocus(
                    onPressed: () {
                      setState(() {
                        isFanFocusRightTopSelected =
                            !isFanFocusRightTopSelected;
                      });
                    },
                    isSelected: isFanFocusRightTopSelected,
                    focusType: "top_half"),
                const SizedBox(
                  height: 12,
                ),
                FanFocus(
                    onPressed: () {
                      setState(() {
                        isFanFocusRightBottomSelected =
                            !isFanFocusRightBottomSelected;
                      });
                    },
                    isSelected: isFanFocusRightBottomSelected,
                    focusType: "bottom_half")
              ],
            )),
            SizedBox(
              width: size.width * 0.1,
            ),
          ],
        ),
        const SizedBox(
          height: 80,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TemperatureControl(
              temperature: temperatureLeft,
              side: Side.left,
            ),
            TemperatureControl(
              temperature: temperatureRight,
              side: Side.right,
            )
          ],
        ),
        const SizedBox(
          height: 170,
        ),
        const FanSpeedControls(),
        const SizedBox(
          height: 70,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClimateControls(
                isSelected: isACSelected,
                onPressed: () {
                  ref
                      .read(vehicleProvider.notifier)
                      .setHVACMode(mode: 'airCondition');
                },
                child: Text(
                  "A/C",
                  style: isACSelected
                      ? climateControlSelectedTextStyle
                      : climateControlTextStyle,
                )),
            ClimateControls(
                onPressed: () {
                  setState(() {
                    isSYNCSelected = !isSYNCSelected;
                  });
                },
                isSelected: isSYNCSelected,
                child: Text(
                  "SYNC",
                  style: isSYNCSelected
                      ? climateControlSelectedTextStyle
                      : climateControlTextStyle,
                )),
            ClimateControls(
                onPressed: () {
                  ref
                      .read(vehicleProvider.notifier)
                      .setHVACMode(mode: 'frontDefrost');
                },
                isSelected: isFrontDefrostSelected,
                child: SvgPicture.asset(
                  "assets/${isFrontDefrostSelected ? "FrontDefrostFilled.svg" : "FrontDefrost.svg"}",
                ))
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClimateControls(
                isSelected: isAutoSelected,
                onPressed: () {
                  setState(() {
                    isAutoSelected = !isAutoSelected;
                  });
                },
                child: Text(
                  "AUTO",
                  style: isAutoSelected
                      ? climateControlSelectedTextStyle
                      : climateControlTextStyle,
                )),
            ClimateControls(
                onPressed: () {
                  ref
                      .read(vehicleProvider.notifier)
                      .setHVACMode(mode: 'recirculation');
                },
                isSelected: isRecirculationSelected,
                child: SvgPicture.asset(
                  "assets/${isRecirculationSelected ? "RecirculationFilled.svg" : "Recirculation.svg"}",
                )),
            ClimateControls(
                onPressed: () {
                  ref
                      .read(vehicleProvider.notifier)
                      .setHVACMode(mode: 'rearDefrost');
                },
                isSelected: isRearDefrostSelected,
                child: SvgPicture.asset(
                  "assets/${isRearDefrostSelected ? "BackDefrostFilled.svg" : "BackDefrost.svg"}",
                ))
          ],
        )
      ],
    );
  }
}
