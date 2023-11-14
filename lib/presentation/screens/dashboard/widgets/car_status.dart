// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:gradient_borders/gradient_borders.dart';

import '../../../../export.dart';

class CarStatus extends ConsumerStatefulWidget {
  const CarStatus({super.key});

  @override
  CarStatusState createState() => CarStatusState();
}

class CarStatusState extends ConsumerState<CarStatus> {
  @override
  void initState() {
    super.initState();
    // "ref" can be used in all life-cycles of a StatefulWidget.
    //ref.read(counterProvider);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0,0,0,84),
      child: SizedBox(
        height: 440,
        width: 652,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const LeftCarStatus(),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 47.0), // Adding horizontal padding
              child: SvgPicture.asset(
                'assets/Car Illustration.svg',
                width: 625,
                height: 440,
                fit: BoxFit.fitHeight,
              ),
            ),
            const RightCarStatus(),
          ],
        ),
      ),
    );
  }
}

class LeftCarStatus extends ConsumerWidget {
  const LeftCarStatus({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final frontLeftTire =
        ref.watch(vehicleProvider.select((vehicle) => vehicle.frontLeftTire));
    final rearLeftTire =
        ref.watch(vehicleProvider.select((vehicle) => vehicle.rearLeftTire));

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            PSIProgressIndicator(value: frontLeftTire.toDouble()),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  frontLeftTire.toStringAsFixed(1),
                  style: GoogleFonts.brunoAce(
                    textStyle: TextStyle(
                        color: Colors.white, fontSize: 44),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                PSIWidget(),
              ],
            ),
          ],
        ),
        ChildLockLeft(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            PSIProgressIndicator(value: rearLeftTire.toDouble()),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  rearLeftTire.toStringAsFixed(1),
                  style: GoogleFonts.brunoAce(
                    textStyle: TextStyle(
                        color: Colors.white, fontSize: 44),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                PSIWidget(),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class RightCarStatus extends ConsumerWidget {
  const RightCarStatus({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final frontRightTire =
        ref.watch(vehicleProvider.select((vehicle) => vehicle.frontRightTire));
    final rearRightTire =
        ref.watch(vehicleProvider.select((vehicle) => vehicle.rearRightTire));

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          
          children: [
            PSIProgressIndicator(value: frontRightTire.toDouble()),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  frontRightTire.toStringAsFixed(1),
                  style: GoogleFonts.brunoAce(
                    textStyle: TextStyle(
                        color: Colors.white, fontSize: 44),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                PSIWidget(),
              ],
            ),
          ],
        ),
        const ChildLockRight(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PSIProgressIndicator(value: rearRightTire.toDouble()),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  rearRightTire.toStringAsFixed(1),
                  style: GoogleFonts.brunoAce(
                    textStyle: TextStyle(
                        color: Colors.white, fontSize: 44),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                PSIWidget(),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class PSIProgressIndicator extends StatelessWidget {
  final double value;
  const PSIProgressIndicator({
    Key? key,
    required this.value, // Require the value to be passed
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Calculate the width as a percentage of the full width (74 in this case)
    final double fillWidth = (value / 35) * 74;

    return Stack(
      alignment: AlignmentDirectional.centerStart,
      children: [
        Container(
          width: 100,
          height: 24,
          decoration: BoxDecoration(
            border: GradientBoxBorder(
              gradient:
                  LinearGradient(colors: const [Colors.white30, Colors.white]),
            ),
          ),
          
        ),
        Positioned(
          left: 3,
          child: Container(
            width: fillWidth, // Use the calculated width here
            height: 18, // Match the height of the progress bar
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: const [AGLDemoColors.periwinkleColor, Colors.white],
                stops: [
                  0.8,
                  1,
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class PSIWidget extends StatelessWidget {
  const PSIWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 4.0, right: 1.0, bottom: 2.0),
      child: Text(
        'PSI',
        style: TextStyle(
          fontSize: 26,
        ),
      ),
    );
  }
}
