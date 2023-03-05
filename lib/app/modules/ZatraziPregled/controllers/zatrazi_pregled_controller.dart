import 'package:booking_calendar/booking_calendar.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class ZatraziPregledController extends GetxController {
  //TODO: Implement ZatraziPregledController
  final now = DateTime.now();
  late BookingService mockBookingService;



  //final List<DateTimeRange> converted = [];
  final List<DateTimeRange> converted = <DateTimeRange>[].obs;

  List<DateTimeRange> convertStreamResultMock({required dynamic streamResult}) {
    ///here you can parse the streamresult and convert to [List<DateTimeRange>]
    ///take care this is only mock, so if you add today as disabledDays it will still be visible on the first load
    ///disabledDays will properly work with real data
    DateTime first = DateTime.now();
    DateTime second = DateTime.now().add(const Duration(minutes: 55));
    DateTime third = DateTime.now().subtract(const Duration(minutes: 240));
    DateTime fourth = DateTime.now().subtract(const Duration(minutes: 500));
    converted.add(DateTimeRange(
        start: first, end: DateTime.now().add(const Duration(minutes: 30))));
    converted.add(DateTimeRange(
        start: second, end: second.add(const Duration(minutes: 23))));
    converted.add(DateTimeRange(
        start: third, end: third.add(const Duration(minutes: 15))));
    converted.add(DateTimeRange(
        start: fourth, end: fourth.add(const Duration(minutes: 50))));
    return converted;
  }

  Future<dynamic> uploadBookingMock(
      {required BookingService newBooking}) async {
    await Future.delayed(const Duration(seconds: 1));
    converted.add(DateTimeRange(
        start: newBooking.bookingStart, end: newBooking.bookingEnd));
    print('${newBooking.toJson()} has been uploaded');
  }

  List<DateTimeRange> generatePauseSlots() {
    return [
      DateTimeRange(
          start: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day, 12, 0),
          end: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day, 13, 0))
    ];
  }

  Stream<dynamic>? getBookingStreamMock(
      {required DateTime end, required DateTime start}) {
    return Stream.value([]);
  }

  var cselectedDay = DateTime.now().obs;
  var cfocusedDay = DateTime.now().obs;

  changeSelectedDate(DateTime selectedDay, DateTime focusedDay) {
    cselectedDay.value = selectedDay;
    cfocusedDay.value = focusedDay;
  }

  var currentSelectedValue = ''.obs;
  var currencies = [
    "Food",
    "Transport",
    "Personal",
    "Shopping",
    "Medical",
    "Rent",
    "Movie",
    "Salary"
  ];

  // formating(DateTime date) {
  //   var suffix = "th";
  //   var digit = date.day % 10;
  //   if ((digit > 0 && digit < 4) && (date.day < 11 || date.day > 13)) {
  //     suffix = ["st", "nd", "rd"][digit - 1];
  //   }
  //   return DateFormat.yMMMMd("hr").format(date);
  // }

  // Widget buildClassContainer() {
  //   return Container(
  //       width: double.infinity,
  //       alignment: Alignment.centerLeft,
  //       //color: Color(0xFF1B1B1B),
  //       child: Padding(
  //         padding: const EdgeInsets.symmetric(vertical: 8.0),
  //         child: Text(
  //           formating(cselectedDay.value),
  //           overflow: TextOverflow.ellipsis,
  //           textAlign: TextAlign.center,
  //           style: const TextStyle(
  //               color: Colors.black, fontWeight: FontWeight.w600, fontSize: 14),
  //         ),
  //       ));
  // }

  List<Meeting> getDataSource() {
    final List<Meeting> meetings = <Meeting>[];
    final DateTime today = DateTime.now();
    final DateTime startTime = DateTime(today.year, today.month, today.day, 9);
    final DateTime endTime = startTime.add(const Duration(hours: 6));
    meetings.add(Meeting(
        'Conference', startTime, endTime, const Color(0xFF0F8644), false));
    return meetings;
  }

  DataSource getCalendarDataSource() {
    List appointments = [];
    appointments.add(Appointment(
      startTime: DateTime.now(),
      endTime: DateTime.now(),
      isAllDay: true,
      subject: 'Pregled',
      color: Colors.blue,
      startTimeZone: '',
      endTimeZone: '',
    ));
    appointments.add(Appointment(
      startTime: DateTime.now(),
      endTime: DateTime.now().add(Duration(hours: 2)),
      isAllDay: true,
      subject: 'Pregled',
      color: Colors.blue,
      startTimeZone: '',
      endTimeZone: '',
    ));
    appointments.add(Appointment(
      startTime: DateTime.now(),
      endTime: DateTime.now().add(Duration(hours: 2)),
      isAllDay: true,
      subject: 'Pregled',
      color: Colors.blue,
      startTimeZone: '',
      endTimeZone: '',
    ));

    return DataSource(appointments);
  }

  final count = 0.obs;

  @override
  void onInit() {
    super.onInit();
    mockBookingService = BookingService(
        serviceName: 'Mock Service',
        serviceDuration: 30,
        bookingEnd: DateTime(
            DateTime.now().year, DateTime.now().month, DateTime.now().day, 18, 0),
        bookingStart: DateTime(
            DateTime.now().year, DateTime.now().month, DateTime.now().day, 8, 0));
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}

class DataSource extends CalendarDataSource {
  DataSource(List source) {
    appointments = source;
  }
}

class Meeting {
  /// Creates a meeting class with required details.
  Meeting(this.eventName, this.from, this.to, this.background, this.isAllDay);

  /// Event name which is equivalent to subject property of [Appointment].
  String eventName;

  /// From which is equivalent to start time property of [Appointment].
  DateTime from;

  /// To which is equivalent to end time property of [Appointment].
  DateTime to;

  /// Background which is equivalent to color property of [Appointment].
  Color background;

  /// IsAllDay which is equivalent to isAllDay property of [Appointment].
  bool isAllDay;
}
