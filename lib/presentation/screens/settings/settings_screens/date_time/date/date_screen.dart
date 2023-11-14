import 'package:flutter_ics_homescreen/export.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:intl/intl.dart';

class DatePage extends ConsumerWidget {
  const DatePage({super.key});
  static Page<void> page() => const MaterialPage<void>(child: DatePage());

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Column(children: [
        CommonTitle(
          title: 'Date',
          hasBackButton: true,
          onPressed: () {
            context.flow<AppState>().update((state) => AppState.dateTime);
          },
        ),
        const Expanded(
          child: Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 144),
              child: SingleChildScrollView(child: DateScreenWidget())),
        ),
      ]),
    );
  }
}

class DateScreenWidget extends ConsumerStatefulWidget {
  const DateScreenWidget({super.key});
  Page<void> page() => const MaterialPage<void>(child: DateScreenWidget());

  @override
  DateScreenWidgetState createState() => DateScreenWidgetState();
}

class DateScreenWidgetState extends ConsumerState<DateScreenWidget> {
  late String selectedDate;

  onPressed({required String type}) {
    if (type == "confirm") {
      ref.read(dateTimeStateProvider.notifier).setDate(selectedDate);
      context.flow<AppState>().update((state) => AppState.dateTime);
    } else if (type == "cancel") {
      context.flow<AppState>().update((state) => AppState.dateTime);
    }
  }

  @override
  void initState() {
    selectedDate = ref.read(dateTimeStateProvider).date;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        CalendarDatePicker2(
          config: CalendarDatePicker2Config(
              calendarType: CalendarDatePicker2Type.single,
              dayBuilder: (
                  {required date,
                  decoration,
                  isDisabled,
                  isSelected,
                  isToday,
                  textStyle}) {
                Widget? dayWidget;
                dayWidget = Container(
                  decoration: decoration,
                  child: Center(
                    child: Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        Text(
                          MaterialLocalizations.of(context)
                              .formatDecimal(date.day),
                          style: textStyle,
                        ),
                      ],
                    ),
                  ),
                );

                return dayWidget;
              },
              dayTextStyle: const TextStyle(
                  color: AGLDemoColors.periwinkleColor, fontSize: 40),
              selectedDayHighlightColor: AGLDemoColors.neonBlueColor,
              controlsTextStyle: const TextStyle(
                  color: AGLDemoColors.periwinkleColor, fontSize: 40),
              weekdayLabelTextStyle: const TextStyle(
                  color: AGLDemoColors.periwinkleColor, fontSize: 40),
              controlsHeight: 40,
              dayTextStylePredicate: ({required date}) {
                return const TextStyle(
                    color: AGLDemoColors.periwinkleColor, fontSize: 40);
              },
              selectedDayTextStyle:
                  const TextStyle(color: Colors.white, fontSize: 40)),
          value: selectedDate == "mm/dd/yyyy"
              ? []
              : [DateFormat().add_yMMMMd().parse(selectedDate)],
          onValueChanged: (dates) {
            setState(() {
              selectedDate = DateFormat().add_yMMMMd().format(dates.first!);
            });
          },
        ),
        const SizedBox(
          height: 120,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Material(
              color: Colors.transparent,
              child: InkWell(
                onHighlightChanged: (value) {
                  // setState(() {
                  //   isCancelButtonHighlighted = value;
                  // });
                },
                onTap: () {
                  onPressed(type: "cancel");

                  // onTap(type: "cancel");
                },
                child: Container(
                  width: size.width / 3.2,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.7),
                            blurRadius: 1.5,
                            offset: const Offset(1, 2))
                      ],
                      gradient: LinearGradient(colors: [
                        AGLDemoColors.resolutionBlueColor,
                        AGLDemoColors.neonBlueColor.withOpacity(0.15),
                      ]),
                      borderRadius: BorderRadius.circular(3),
                      border: Border.all(
                          color:
                              AGLDemoColors.neonBlueColor.withOpacity(0.20))),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Text(
                      "Cancel",
                      style: TextStyle(
                          color: AGLDemoColors.periwinkleColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 40,
                          letterSpacing: 0.4),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Material(
              color: Colors.transparent,
              child: InkWell(
                onHighlightChanged: (value) {
                  // setState(() {
                  //   isCancelButtonHighlighted = value;
                  // });
                },
                onTap: () {
                  onPressed(type: "confirm");
                  // onTap(type: "cancel");
                },
                child: Container(
                  width: MediaQuery.sizeOf(context).width / 3.2,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.7),
                            blurRadius: 1.5,
                            offset: const Offset(1, 2))
                      ],
                      gradient: LinearGradient(colors: [
                        AGLDemoColors.resolutionBlueColor,
                        AGLDemoColors.neonBlueColor.withOpacity(0.15),
                      ]),
                      borderRadius: BorderRadius.circular(3),
                      border: Border.all(
                          color:
                              AGLDemoColors.neonBlueColor.withOpacity(0.20))),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Text(
                      "Confirm",
                      style: TextStyle(
                          color: AGLDemoColors.periwinkleColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 40,
                          letterSpacing: 0.4),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
