import 'package:flutter_ics_homescreen/export.dart';

class PressureUnitPage extends ConsumerWidget {
  const PressureUnitPage({super.key});

  static Page<void> page() =>
      const MaterialPage<void>(child: PressureUnitPage());
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final unit =
        ref.watch(unitStateProvider.select((unit) => unit.pressureUnit));

    return Scaffold(
      body: Column(
        children: [
          CommonTitle(
            title: 'Pressure',
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
                          stops: unit == PressureUnit.kilopascals
                              ? [0, 0.01, 0.8]
                              : [0.1, 1],
                          colors: unit == PressureUnit.kilopascals
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
                          'kilopascals',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        //title: Text(widget.title),
                        //enabled: isSwitchOn,
                        trailing: unit == PressureUnit.kilopascals
                            ? const Icon(
                                Icons.done,
                                color: AGLDemoColors.periwinkleColor,
                                size: 48,
                              )
                            : null,
                        onTap: () {
                          ref
                              .read(unitStateProvider.notifier)
                              .setPressureUnit(PressureUnit.kilopascals);
                        }),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 130,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          stops: unit == PressureUnit.psi
                              ? [0, 0.01, 0.8]
                              : [0.1, 1],
                          colors: unit == PressureUnit.psi
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
                        'PSI',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      //title: Text(widget.title),
                      //enabled: isSwitchOn,
                      trailing: unit == PressureUnit.psi
                          ? const Icon(
                              Icons.done,
                              color: AGLDemoColors.periwinkleColor,
                              size: 38,
                            )
                          : null,

                      onTap: () {
                        ref
                            .read(unitStateProvider.notifier)
                            .setPressureUnit(PressureUnit.psi);
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
