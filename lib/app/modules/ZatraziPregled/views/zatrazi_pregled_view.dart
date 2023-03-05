import 'package:booking_calendar/booking_calendar.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../formInput/views/form_input_view.dart';
import '../controllers/zatrazi_pregled_controller.dart';

class ZatraziPregledView extends GetView<ZatraziPregledController> {
  const ZatraziPregledView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CalendarFormat _calendarFormat = CalendarFormat.week;
    Get.put(ZatraziPregledController());

    final kToday = DateTime.now();
    final kFirstDay = DateTime(kToday.year, kToday.month - 3, kToday.day);
    final kLastDay = DateTime(kToday.year, kToday.month + 3, kToday.day);
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.blue[200],
        elevation: 0,
        toolbarHeight: 75,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Obx(
                () => TableCalendar(
                  daysOfWeekStyle: DaysOfWeekStyle(
                    dowTextFormatter: (date, locale) =>
                        DateFormat.EEEE(locale).format(date)[0],
                  ),
                  calendarStyle: CalendarStyle(
                    defaultTextStyle: TextStyle(color: Colors.blueAccent),
                    weekendTextStyle: TextStyle(color: Colors.blueAccent),
                    todayDecoration: BoxDecoration(
                        color: Color(0xFF1B1B1B), shape: BoxShape.circle),
                    selectedDecoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black)),
                    selectedTextStyle: TextStyle(color: Colors.blueAccent),
                  ),
                  firstDay: kFirstDay,
                  lastDay: kLastDay,
                  rowHeight: 64,
                  //startingDayOfWeek: StartingDayOfWeek.monday,
                  headerVisible: false,
                  // headerStyle: HeaderStyle(
                  //     titleTextStyle: const TextStyle(color: Colors.black),
                  //     formatButtonVisible: false,
                  //     titleTextFormatter: (date, locale) =>
                  //         controller.formating(date)),
                  focusedDay: controller.cfocusedDay.value,
                  calendarFormat: _calendarFormat,
                  selectedDayPredicate: (day) {
                    return isSameDay(controller.cselectedDay.value, day);
                  },
                  onDaySelected: (selectedDay, focusedDay) {
                    if (!isSameDay(
                        controller.cselectedDay.value, selectedDay)) {
                      controller.changeSelectedDate(selectedDay, focusedDay);
                    }
                  },
                ),
              ),
            ),
            DropdownSearch<String>.multiSelection(
              popupProps: PopupPropsMultiSelection.menu(
                  showSelectedItems: true,
                  menuProps: MenuProps(
                    borderOnForeground: true,
                  ),
                  favoriteItemProps: FavoriteItemProps(
                    showFavoriteItems: true,
                  )),
              clearButtonProps: ClearButtonProps(isVisible: true),
              dropdownDecoratorProps: DropDownDecoratorProps(
                dropdownSearchDecoration: InputDecoration(
                  labelText: "Simptomi",
                  hintText: "Izaberite simptome",
                ),
              ),
              items: ["Bolovi u leđima",
                "Bolovi u stomaku",
                "Glavobolja",
                "Grlobolja",
                "Kašalj",
                "Mučnina",
                "Povišena temperatura",
                "Vrtoglovica",
                "Zubobolja"],

              //popupItemDisabled: isItemDisabled,
              onChanged: print,
              //selectedItems: ["Brazil"],
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              keyboardType: TextInputType.multiline,
              maxLines: 2,
              decoration: new InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.blueAccent, width: 1.0),
                    borderRadius: BorderRadius.circular(8)),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 1.0),
                ),
                hintText: 'Obrazložite vaše simptome',
              ),
            ),
            SizedBox(
              height: 30,
            ),
            //Obx(() => controller.buildClassContainer()),
            Spacer(),
            // SfCalendar(
            //   //dataSource: CalendarDataSource(controller.getDataSource()),
            //
            //   monthViewSettings: MonthViewSettings(
            //     appointmentDisplayMode: MonthAppointmentDisplayMode.indicator,
            //     showAgenda: true,
            //
            //   ),
            //   dataSource: controller.getCalendarDataSource(),
            // ),




                    BookingCalendar(
                    bookingService: controller.mockBookingService,
                    convertStreamResultToDateTimeRanges: controller.convertStreamResultMock,
                    getBookingStream: controller.getBookingStreamMock,
                    uploadBooking: controller.uploadBookingMock,
                    pauseSlots: controller.generatePauseSlots(),
                    pauseSlotText: "Pauza",
                    hideBreakTime: false,
                    loadingWidget: const Text('Fetching data...'),
                    uploadingWidget: const CircularProgressIndicator(),
                    locale: 'bs_BS',
                    //startingDayOfWeek: StartingDayOfWeek.tuesday,
                    disabledDays: const [6, 7],
                      bookingButtonText: '7 Dosutpnih termina',
                      availableSlotText: 'Dostupno',
                      bookedSlotText: 'Zauzeto',
                      selectedSlotText: 'Izabrano',
                    bookingButtonColor: Color(0xFFAEAB33),

              ),
            GestureDetector(
              onTap: (){
                Get.to(FormInputView());
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(child: Padding(
                    padding: const EdgeInsets.all(7.0),
                    child: Text("Rezerviši", style: TextStyle(fontSize: 20, color: Colors.white), ),
                  ),),
                ),
              )
            )




          ],
        ),
      ),
    );
  }
}
