import 'dart:async';

import 'package:flutter_ics_homescreen/export.dart';

class ClockPage extends ConsumerWidget {
  const ClockPage({super.key});

  static Page<void> page() => const MaterialPage<void>(child: ClockPage());

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    double clockSize = MediaQuery.sizeOf(context).width * 0.51;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        CommonTitle(
          title: "Clock",
          hasBackButton: true,
          onPressed: () {
            context.flow<AppState>().update((state) => AppState.apps);
          },
        ),
        const SizedBox(
          height: 25,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        color: Colors.white,
                        size: 48,
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      Text(
                        "Fortaleza",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                  const SizedBox(
                    height: 140,
                  ),
                  Container(
                    width: clockSize,
                    height: clockSize,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/clockBackground.png",
                        ),
                      ),
                    ),
                    child: const AnalogClock(
                      dialColor: null,
                      markingColor: null,
                      hourNumberColor: null,
                      secondHandColor: AGLDemoColors.jordyBlueColor,
                      hourHandColor: AGLDemoColors.jordyBlueColor,
                      minuteHandColor: AGLDemoColors.jordyBlueColor,
                      centerPointColor: null,
                      hourHandLengthFactor: 0.6,
                      secondHandLengthFactor: 0.6,
                      secondHandWidthFactor: 1.5,
                      minuteHandLengthFactor: 0.7,
                      minuteHandWidthFactor: 2.5,
                      hourHandWidthFactor: 1.2,
                    ),
                  ),
                  const SizedBox(
                    height: 120,
                  ),
                  const RealTimeClock(),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}

class RealTimeClock extends StatefulWidget {
  const RealTimeClock({super.key});

  @override
  State<RealTimeClock> createState() => _RealTimeClockState();
}

class _RealTimeClockState extends State<RealTimeClock> {
  late String _timeString;
  late Timer _timer;

  @override
  void initState() {
    _timeString = _formatDateTime(DateTime.now());
    _timer =
        Timer.periodic(const Duration(seconds: 1), (Timer t) => _getTime());
    super.initState();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void _getTime() {
    final DateTime now = DateTime.now();
    final String formattedDateTime = _formatDateTime(now);
    if (mounted) {
      setState(() {
        _timeString = formattedDateTime;
      });
    }
  }

  String _formatDateTime(DateTime dateTime) {
    return "${dateTime.hour}:${dateTime.minute.toString().padLeft(2, '0')}";
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      _timeString,
      style: GoogleFonts.brunoAce(color: Colors.white, fontSize: 128),
    );
  }
}
