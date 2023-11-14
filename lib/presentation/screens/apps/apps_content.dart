import 'package:flutter_ics_homescreen/data/models/hybrid.dart';
import 'package:flutter_ics_homescreen/export.dart';
import 'package:flutter_ics_homescreen/presentation/screens/apps/widgets/app_button.dart';

class Apps extends StatefulWidget {
  const Apps({super.key});

  @override
  State<Apps> createState() => _AppsState();
}

class _AppsState extends State<Apps> {
  onPressed({required String type}) {
    if (type == "weather") {
      context.flow<AppState>().update((next) => AppState.weather);
    } else if (type == "clock") {
      context.flow<AppState>().update((next) => AppState.clock);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const CommonTitle(title: "Applications"),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 148),
          child: Wrap(
            children: [
              AppButton(
                image: "weather.svg",
                title: "Weather",
                onPressed: () {
                  onPressed(type: "weather");
                },
              ),
              AppButton(
                image: "clock.svg",
                title: "Clock",
                onPressed: () {
                  onPressed(type: "clock");
                },
              )
            ],
          ),
        ),
        // Center(
        //   child: SizedBox(
        //       width: 500,
        //       height: 500,
        //       child: Center(
        //         child: Lottie.asset(''),
        //       )),
        //     ),
      ],
    );
  }
}

