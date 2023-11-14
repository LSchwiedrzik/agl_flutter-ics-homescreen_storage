import 'package:flutter_ics_homescreen/export.dart';

class WeatherPage extends ConsumerWidget {
  const WeatherPage({super.key});

  static Page<void> page() => const MaterialPage<void>(child: WeatherPage());
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    double weatherIconSize = MediaQuery.sizeOf(context).width * 0.278;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        CommonTitle(
          title: "Weather",
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
            padding: const EdgeInsets.symmetric(horizontal: 144),
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
                  SvgPicture.asset(
                    "assets/weatherStat.svg",
                    width: weatherIconSize,
                    height: weatherIconSize,
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  Text(
                    "28.3°C",
                    style: GoogleFonts.brunoAce(
                        color: Colors.white, fontSize: 128),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(30.0),
                    child: Text(
                      "Partially Cloudy",
                      style: TextStyle(color: Colors.white, fontSize: 44),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    "Max: 31°   Min: 25°",
                    style: TextStyle(color: Colors.white, fontSize: 40),
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                  const HourlyForecast()
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
