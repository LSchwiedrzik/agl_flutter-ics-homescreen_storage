import 'package:flutter_ics_homescreen/export.dart';

class SelectYearPage extends ConsumerWidget {
  const SelectYearPage({super.key});
  static Page<void> page() => const MaterialPage<void>(child: SelectYearPage());

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Column(children: [
        CommonTitle(
          title: 'Select Year',
          hasBackButton: true,
          onPressed: () {
            context.flow<AppState>().update((state) => AppState.date);
          },
        ),
        const Expanded(
          child: Padding(
              padding:
                  EdgeInsets.only(top: 50, left: 144, right: 144, bottom: 200),
              child: SelectYearWidget()),
        ),
      ]),
    );
  }
}

class SelectYearWidget extends ConsumerStatefulWidget {
  const SelectYearWidget({super.key});
  Page<void> page() => const MaterialPage<void>(child: SelectYearWidget());

  @override
  SelectYearWidgetState createState() => SelectYearWidgetState();
}

class SelectYearWidgetState extends ConsumerState<SelectYearWidget> {
  late int selectedYear;
  late ScrollController controller;

  onPressed({required int year}) {
    setState(() {
      selectedYear = year;
    });
    ref.read(currentTimeProvider.notifier).selectedYear = selectedYear;
    ref.read(currentTimeProvider.notifier).isYearChanged = true;
    context.flow<AppState>().update((state) => AppState.date);
  }

  @override
  void initState() {
    DateTime currentDate = ref.read(currentTimeProvider);
    int? selYear = ref.read(currentTimeProvider.notifier).selectedYear;

    if (selYear != null &&
        ref.read(currentTimeProvider.notifier).isYearChanged) {
      selectedYear = selYear;
    } else {
      selectedYear = currentDate.year;
    }
    controller = ScrollController();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final position = controller.position.maxScrollExtent / 2;
      controller.jumpTo(position);
    });
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 150),
      child: SingleChildScrollView(
        controller: controller,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            for (var i = selectedYear - 30; i < selectedYear + 30; i++)
              Column(
                children: [
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 30, horizontal: 30),
                    onTap: () {
                      onPressed(year: i);
                    },
                    title: Text(
                      i.toString(),
                      style: TextStyle(
                          color: selectedYear == i
                              ? Colors.white
                              : AGLDemoColors.periwinkleColor,
                          fontSize: 40),
                    ),
                    trailing: selectedYear == i
                        ? const Icon(
                            Icons.check,
                            color: AGLDemoColors.neonBlueColor,
                            size: 40,
                          )
                        : null,
                  ),
                  const Divider(
                    color: AGLDemoColors.buttonFillEnabledColor,
                    height: 1,
                    thickness: 1,
                  )
                ],
              )
          ],
        ),
      ),
    );
  }
}
