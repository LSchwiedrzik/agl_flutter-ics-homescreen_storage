import 'package:flutter_ics_homescreen/export.dart';

class DistanceUnitPage extends ConsumerWidget {
  const DistanceUnitPage({super.key});

  static Page<void> page() =>
      const MaterialPage<void>(child: DistanceUnitPage());
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final unit =
        ref.watch(unitStateProvider.select((unit) => unit.distanceUnit));

    return Scaffold(
      
      body: Column(
        children: [
          CommonTitle(
            title: 'Distance',
            hasBackButton: true,
            onPressed: () {
              context.flow<AppState>().update((state) => AppState.units);
            },
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 144),
              child: ListView(
                children: [
                  Container(
                    height: 130,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          stops: unit == DistanceUnit.kilometers
                              ? [0, 0.01, 0.8]
                              : [0.1, 1],
                          colors: unit == DistanceUnit.kilometers
                              ? <Color>[
                                  Colors.white,
                                  Colors.blue,
                                  const Color.fromARGB(16, 41, 98, 255)
                                ]
                              : <Color>[Colors.black, Colors.black12]),
                    ),
                    child: ListTile(
                        minVerticalPadding: 0.0,
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 40.0),
                        leading: Text(
                          'Kilometers',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        //title: Text(widget.title),
                        //enabled: isSwitchOn,
                        trailing: unit == DistanceUnit.kilometers
                            ? const Icon(Icons.done,
                                color: AGLDemoColors.periwinkleColor,
                                size: 48,
                              )
                            : null,
                        onTap: () {
                          ref
                              .read(unitStateProvider.notifier)
                              .setDistanceUnit(DistanceUnit.kilometers);
                        }),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Container(
                    height: 130,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          stops: unit == DistanceUnit.miles
                              ? [0, 0.01, 0.8]
                              : [0.1, 1],
                          colors: unit == DistanceUnit.miles
                              ? <Color>[
                                  Colors.white,
                                  Colors.blue,
                                  const Color.fromARGB(16, 41, 98, 255)
                                ]
                              : <Color>[Colors.black, Colors.black12]),
                    ),
                    child: ListTile(
                      minVerticalPadding: 0.0,
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 40.0),
                      leading: Text(
                        'Miles',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      //title: Text(widget.title),
                      //enabled: isSwitchOn,
                      trailing: unit == DistanceUnit.miles
                          ? const Icon(Icons.done,
                              color: AGLDemoColors.periwinkleColor,
                              size: 48,
                            )
                          : null,

                      onTap: () {
                        ref
                            .read(unitStateProvider.notifier)
                            .setDistanceUnit(DistanceUnit.miles);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
