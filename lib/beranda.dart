import 'package:flutter/material.dart';
import 'pengaturan.dart';
import 'package:table_calendar/table_calendar.dart';
import 'tugas.dart';
import 'notification.dart';
import 'saya.dart';

class Beranda extends StatefulWidget {
  const Beranda({super.key});

  @override
  State<Beranda> createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  final int currentYear = DateTime.now().year;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF161618),
      body: Padding(
        padding: const EdgeInsets.all(16.0),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'TASKUY',
                  style: TextStyle(
                    color: Color(0XFF015E67),
                    fontSize: 24,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold,
                  ),
                ),

                IconButton(
                  icon: const Icon(
                    Icons.settings,
                    color: Color(0XFF015E67),
                    size: 30,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Pengaturan()),
                    );
                  },
                ),
              ],
            ),
            SizedBox(height: 10),

            const Text(
              "Kalender",
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Color(0XFFEDEDED),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),

            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Color(0XFF1E1E1E),
                borderRadius: BorderRadius.circular(1),
                boxShadow: [
                  BoxShadow(
                    color: Color(0XFFEDEDED),
                    blurRadius: 3,
                    offset: Offset(0, 1),
                  ),
                ],
              ),
              child: SizedBox(
                width: double.infinity,
                child: TableCalendar(
                  rowHeight: 28,
                  daysOfWeekHeight: 20,
                  firstDay: DateTime(currentYear, 1, 1),
                  lastDay: DateTime(currentYear, 12, 31),
                  headerStyle: HeaderStyle(
                    titleTextStyle: TextStyle(
                      color: Color(0XFFEDEDED),
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                    formatButtonVisible: false,
                    titleCentered: true,
                    leftChevronIcon: Icon(
                      Icons.chevron_left,
                      color: Color(0XFFEDEDED),
                      size: 32,
                    ),
                    rightChevronIcon: Icon(
                      Icons.chevron_right,
                      color: Color(0XFFEDEDED),
                      size: 32,
                    ),
                  ),
                  daysOfWeekStyle: DaysOfWeekStyle(
                    weekdayStyle: TextStyle(
                      color: Color(0XFFEDEDED),
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                    weekendStyle: TextStyle(
                      color: Color(0XFFEDEDED),
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  focusedDay: _focusedDay,
                  selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
                  onDaySelected: (selectedDay, focusedDay) => {
                    setState(() {
                      _selectedDay = selectedDay;
                      _focusedDay = focusedDay;
                    }),
                  },
                  calendarBuilders: CalendarBuilders(
                    outsideBuilder: (context, day, focusedDay) {
                      return SizedBox.shrink();
                    },
                  ),
                  calendarStyle: CalendarStyle(
                    defaultTextStyle: TextStyle(
                      fontSize: 12,
                      color: Color(0XFFEDEDED),
                    ),
                    weekendTextStyle: TextStyle(
                      fontSize: 12,
                      color: Colors.red,
                    ),
                    selectedTextStyle: TextStyle(fontSize: 12),
                    todayTextStyle: TextStyle(
                      fontSize: 12,
                      color: Color(0XFFEDEDED),
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 24),

            Text(
              "Tugas tanggal 23:",
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Color(0XFFEDEDED),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 12),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0XFF1E1E1E),
                foregroundColor: Color(0XFFEDEDED),
                minimumSize: Size(470, 54),
                alignment: Alignment.centerLeft,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              onPressed: () {},
              child: const Text(
                "Probabilitas dan Statistika",
                style: TextStyle(fontSize: 18),
              ),
            ),

            SizedBox(height: 8),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0XFF1E1E1E),
                foregroundColor: Color(0XFFEDEDED),
                minimumSize: Size(470, 54),
                alignment: Alignment.centerLeft,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              onPressed: () {},
              child: const Text(
                "Jaringan Komputer",
                style: TextStyle(fontSize: 18),
              ),
            ),

            SizedBox(height: 8),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0XFF1E1E1E),
                foregroundColor: Color(0XFFEDEDED),
                minimumSize: Size(470, 54),
                alignment: Alignment.centerLeft,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              onPressed: () {},
              child: const Text(
                "Pemrograman Mobile",
                style: TextStyle(fontSize: 18),
              ),
            ),

            const Spacer(),

            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              padding: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                color: Color(0XFF1E1E1E),
                borderRadius: BorderRadius.circular(6),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.cottage, color: Color(0XFF015E67), size: 28),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Tugas()),
                      );
                    },
                    child: const Icon(
                      Icons.menu_book,
                      size: 28,
                      color: Color(0XFFEDEDED),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Notifikasi()),
                      );
                    },
                    child: const Icon(
                      Icons.notifications_active,
                      size: 28,
                      color: Color(0XFFEDEDED),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Saya()),
                      );
                    },
                    child: const Icon(
                      Icons.person,
                      size: 28,
                      color: Color(0XFFEDEDED),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
