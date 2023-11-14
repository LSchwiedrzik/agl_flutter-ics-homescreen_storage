import 'dart:convert';

import 'package:flutter_ics_homescreen/export.dart';
import 'package:intl/intl.dart';

@immutable
class DateAndTime {
  final String date;
  final String time;
  const DateAndTime({
    required this.date,
    required this.time,
  });

  DateAndTime.initial()
      : date = DateFormat().add_yMMMMd().format(DateTime.now()),
        time = DateFormat('hh:mm a').format(DateTime.now());
  DateAndTime copyWith({
    String? date,
    String? time,
  }) {
    return DateAndTime(
      date: date ?? this.date,
      time: time ?? this.time,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'date': date,
      'time': time,
    };
  }

  factory DateAndTime.fromMap(Map<String, dynamic> map) {
    return DateAndTime(
      date: map['date'],
      time: map['time'],
    );
  }

  String toJson() => json.encode(toMap());

  factory DateAndTime.fromJson(String source) =>
      DateAndTime.fromMap(json.decode(source));

  @override
  String toString() => 'DateAndTime(date: $date, time: $time)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is DateAndTime && other.date == date && other.time == time;
  }

  @override
  int get hashCode => date.hashCode ^ time.hashCode;
}
