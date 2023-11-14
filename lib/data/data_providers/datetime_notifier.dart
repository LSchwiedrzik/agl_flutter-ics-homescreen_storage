import 'package:flutter_ics_homescreen/data/models/date_time.dart';
import 'package:flutter_ics_homescreen/export.dart';

class DateTimeNotifier extends StateNotifier<DateAndTime> {
  DateTimeNotifier(super.state);

  void setDate(String newVal) {
    state = state.copyWith(date: newVal);
  }

  void setTime(String newVal) {
    state = state.copyWith(time: newVal);
  }
}
