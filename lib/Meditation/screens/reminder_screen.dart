import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../size_model.dart';

class ReminderScreen extends StatefulWidget {
  const ReminderScreen({super.key});

  @override
  State<ReminderScreen> createState() => ReminderScreenState();
}

class ReminderScreenState extends State<ReminderScreen> {
  Duration duration = const Duration(hours: 1, minutes: 23);
  bool sunday = true;
  bool monday = true;
  bool tuesday = true;
  bool wednesday = true;
  bool thursday = false;
  bool friday = false;
  bool saturday = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      body: Padding(
        padding: EdgeInsets.only(
          left: getWidth(context, 20),
          top: getHeight(context, 82.21),
          right: getWidth(context, 20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'What time would you\nlike to meditate?',
              style: TextStyle(
                  color: Color.fromRGBO(63, 65, 78, 1),
                  fontFamily: 'HelveticaNeue',
                  fontSize: 24,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: getHeight(context, 15),
            ),
            Text(
              'Any time you can choose but We recommend\nfirst thing in th morning.',
              style: TextStyle(
                color: Color.fromRGBO(161, 164, 178, 1),
                fontSize: 16,
                fontFamily: 'HelveticaNeue',
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(
              height: getHeight(context, 30),
            ),
            Container(
              width: getWidth(context, 400),
              height: getHeight(context, 212),
              decoration: BoxDecoration(
                  color: Color.fromRGBO(245, 245, 249, 1),
                  borderRadius: BorderRadius.circular(24)),
              child: CupertinoTimerPicker(
                mode: CupertinoTimerPickerMode.hm,
                initialTimerDuration: duration,
                // This is called when the user changes the timer's
                // duration.
                onTimerDurationChanged: (value) {
                  setState(() => duration = value);
                },
              ),
            ),
            SizedBox(
              height: getHeight(context, 30),
            ),
            Text(
              'Which day would you\nlike to meditate?',
              style: TextStyle(
                  color: Color.fromRGBO(63, 65, 78, 1),
                  fontFamily: 'HelveticaNeue',
                  fontSize: 24,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: getHeight(context, 15),
            ),
            Text(
              'Everyday is best, but we recommend picking\nat least five.',
              style: TextStyle(
                color: Color.fromRGBO(161, 164, 178, 1),
                fontSize: 16,
                fontFamily: 'HelveticaNeue',
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(
              height: getHeight(context, 30),
            ),
            Row(
              children: [
                DayPickButton(
                  day: 'SU',
                  isDayPicked: sunday,
                  onTap: () {
                    setState(() {
                      sunday = !sunday;
                    });
                  },
                ),
                SizedBox(
                  width: getWidth(context, 10),
                ),
                DayPickButton(
                  day: 'M',
                  isDayPicked: monday,
                  onTap: () {
                    setState(() {
                      monday = !monday;
                    });
                  },
                ),
                SizedBox(
                  width: getWidth(context, 10),
                ),
                DayPickButton(
                  day: 'T',
                  isDayPicked: tuesday,
                  onTap: () {
                    setState(() {
                      tuesday = !tuesday;
                    });
                  },
                ),
                SizedBox(
                  width: getWidth(context, 10),
                ),
                DayPickButton(
                  day: 'W',
                  isDayPicked: wednesday,
                  onTap: () {
                    setState(() {
                      wednesday = !wednesday;
                    });
                  },
                ),
                SizedBox(
                  width: getWidth(context, 10),
                ),
                DayPickButton(
                  day: 'TH',
                  isDayPicked: thursday,
                  onTap: () {
                    setState(() {
                      thursday = !thursday;
                    });
                  },
                ),
                SizedBox(
                  width: getWidth(context, 10),
                ),
                DayPickButton(
                  day: 'F',
                  isDayPicked: friday,
                  onTap: () {
                    setState(() {
                      friday = !friday;
                    });
                  },
                ),
                SizedBox(
                  width: getWidth(context, 10),
                ),
                DayPickButton(
                  day: 'S',
                  isDayPicked: saturday,
                  onTap: () {
                    setState(() {
                      saturday = !saturday;
                    });
                  },
                ),
              ],
            ),
            SizedBox(
              height: getHeight(context, 50),
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  '/', // Новый маршрут
                  (route) => false, // Очищает весь стек
                );
              },
              child: Container(
                width: getWidth(context, 374),
                height: getHeight(context, 63),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(142, 151, 253, 1),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Center(
                  child: Text(
                    'SAVE',
                    style: TextStyle(
                      color: Color.fromRGBO(246, 241, 251, 1),
                      fontSize: 14,
                      fontFamily: 'HelveticaNeue',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: getHeight(context, 10),
            ),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                width: getWidth(context, 374),
                height: getHeight(context, 33),
                child: Center(
                  child: Text(
                    'NO THANKS',
                    style: TextStyle(
                      color: Color.fromRGBO(63, 65, 78, 1),
                      fontSize: 14,
                      fontFamily: 'HelveticaNeue',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DayPickButton extends StatelessWidget {
  final String day;
  final bool isDayPicked;
  final GestureTapCallback? onTap;

  const DayPickButton({
    required this.day,
    required this.isDayPicked,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: onTap,
      child: Container(
        height: getHeight(context, 41),
        width: getWidth(context, 41),
        decoration: BoxDecoration(
          color: isDayPicked
              ? Color.fromRGBO(63, 65, 78, 1)
              : Color.fromRGBO(161, 164, 178, 1),
          shape: BoxShape.circle,
        ),
        child: Padding(
          padding: EdgeInsets.all(1),
          child: Container(
            decoration: BoxDecoration(
              color: isDayPicked
                  ? Color.fromRGBO(63, 65, 78, 1)
                  : Color.fromRGBO(255, 255, 255, 1),
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text(
                day,
                style: TextStyle(
                  color: isDayPicked
                      ? Color.fromRGBO(254, 255, 254, 1)
                      : Color.fromRGBO(161, 164, 178, 1),
                  fontSize: 14,
                  fontFamily: 'HelveticaNeue',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
