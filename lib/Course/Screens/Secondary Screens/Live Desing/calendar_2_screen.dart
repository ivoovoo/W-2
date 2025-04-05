import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../Style/style.dart';
import '../../../Widgets/schedule_widget.dart';

class Calendar2Screen extends StatefulWidget {
  const Calendar2Screen({super.key});

  @override
  State<Calendar2Screen> createState() => _Calendar2ScreenState();
}

class _Calendar2ScreenState extends State<Calendar2Screen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  List<DateTime?> _dates = [];

  String formatDate(DateTime date) {
    return DateFormat('d, MMMM\ny').format(date);
  }

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);

    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AnimatedBuilder(
            animation: _animation,
            builder: (context, child) {
              return Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromRGBO(27, 28, 42, 1),
                      Color.fromRGBO(58, 52, 100, 1),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 60),
                      Text(
                        'Today is',
                        style: Style().montserrat_stl.copyWith(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        formatDate(DateTime.now()),
                        style: Style().montserrat_stl.copyWith(
                          fontSize: 36,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      CalendarDatePicker2(
                        config: CalendarDatePicker2Config(
                          calendarViewMode: CalendarDatePicker2Mode.day,
                          useAbbrLabelForMonthModePicker: false,
                          hideMonthPickerDividers: true,
                          hideScrollViewTopHeader: true,
                          hideLastMonthIcon: true,
                          hideScrollViewMonthWeekHeader: true,
                          hideYearPickerDividers: true,
                          hideNextMonthIcon: true,
                          hideScrollViewTopHeaderDivider: true,
                          weekdayLabelTextStyle: Style().poppins_stl,
                          dayTextStyle: Style().poppins_stl,
                          selectedDayTextStyle: Style().poppins_stl,
                          scrollViewTopHeaderTextStyle: TextStyle(
                            color: Colors.transparent,
                          ),
                          selectedMonthTextStyle: TextStyle(
                            color: Colors.transparent,
                          ),
                          selectedYearTextStyle: TextStyle(
                            color: Colors.transparent,
                          ),
                          selectedRangeDayTextStyle: TextStyle(
                            color: Colors.transparent,
                          ),
                          weekdayLabels: <String>[
                            'Mo',
                            'Tu',
                            'We',
                            'Th',
                            'Fr',
                            'Sa',
                            'Su',
                          ],
                        ),
                        value: _dates,
                        onValueChanged: (dates) => _dates = dates,
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.42, // Начальный размер
            minChildSize: 0.3, // Минимальный размер
            maxChildSize: 0.5, // Максимальный размер
            builder: (BuildContext context, ScrollController scrollController) {
              return Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(252, 249, 251, 1),
                  borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Text(
                          'Your Schedule',
                          style: Style().montserrat_stl.copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                        ScheduleWidget(
                          date: 'December, 11 , 8am',
                          name: 'WarmUp',
                          description: 'Run 02 km ',
                          path: 'assets/yu2.svg',
                          colorgr1: Color.fromRGBO(255, 201, 233, 1),
                          colorgr2: Color.fromRGBO(255, 255, 255, 1),
                          color3: Color.fromRGBO(245, 242, 184, 1),
                        ),
                        ScheduleWidget(
                          date: 'December, 11 , 4pm',
                          name: 'Pushups session',
                          description: '25 rep, 3 sets with 20 sec rest ',
                          path: 'assets/yu1.svg',
                          colorgr1: Color.fromRGBO(253, 253, 253, 1),
                          colorgr2: Color.fromRGBO(253, 253, 253, 1),
                          color3: Colors.white,
                        ),
                        ScheduleWidget(
                          date: 'December, 11 , 8am',
                          name: 'WarmUp',
                          description: 'Run 02 km ',
                          path: 'assets/yu2.svg',
                          colorgr1: Color.fromRGBO(255, 201, 233, 1),
                          colorgr2: Color.fromRGBO(255, 255, 255, 1),
                          color3: Color.fromRGBO(245, 242, 184, 1),
                        ),
                        ScheduleWidget(
                          date: 'December, 11 , 4pm',
                          name: 'Pushups session',
                          description: '25 rep, 3 sets with 20 sec rest ',
                          path: 'assets/yu1.svg',
                          colorgr1: Color.fromRGBO(253, 253, 253, 1),
                          colorgr2: Color.fromRGBO(253, 253, 253, 1),
                          color3: Colors.white,
                        ),
                        ScheduleWidget(
                          date: 'December, 11 , 8am',
                          name: 'WarmUp',
                          description: 'Run 02 km ',
                          path: 'assets/yu2.svg',
                          colorgr1: Color.fromRGBO(255, 201, 233, 1),
                          colorgr2: Color.fromRGBO(255, 255, 255, 1),
                          color3: Color.fromRGBO(245, 242, 184, 1),
                        ),
                        ScheduleWidget(
                          date: 'December, 11 , 4pm',
                          name: 'Pushups session',
                          description: '25 rep, 3 sets with 20 sec rest ',
                          path: 'assets/yu1.svg',
                          colorgr1: Color.fromRGBO(253, 253, 253, 1),
                          colorgr2: Color.fromRGBO(253, 253, 253, 1),
                          color3: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
