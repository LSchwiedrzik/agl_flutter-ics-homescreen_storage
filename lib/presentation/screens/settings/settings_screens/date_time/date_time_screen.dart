import 'package:flutter_ics_homescreen/export.dart';

class DateTimePage extends ConsumerWidget {
  const DateTimePage({super.key});

  static Page<void> page() => const MaterialPage<void>(child: DateTimePage());
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dateTime = ref.watch(dateTimeStateProvider.select((val) => val));

    return Scaffold(
      body: Column(
        children: [
          CommonTitle(
            title: 'Date &  Time',
            hasBackButton: true,
            onPressed: () {
              context.flow<AppState>().update((state) => AppState.settings);
            },
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 144),
              child: ListView(
                children: [
                  UnitsTile(
                      image: "assets/Calendar.svg",
                      title: 'Date',
                      unitName: dateTime.date,
                      hasSwich: false,
                      voidCallback: () async {
                        context
                            .flow<AppState>()
                            .update((next) => AppState.date);
                      }),
                  UnitsTile(
                      image: "assets/Time.svg",
                      title: 'Time',
                      unitName: dateTime.time,
                      hasSwich: true,
                      voidCallback: () {
                        context
                            .flow<AppState>()
                            .update((next) => AppState.time);
                      }),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
