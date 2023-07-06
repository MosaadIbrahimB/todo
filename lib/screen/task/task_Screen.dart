import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';
import 'package:todo/screen/task/model/data_time.dart';
import 'package:todo/screen/task/model/task_container_model.dart';
class TaskScreen extends StatefulWidget {
  static const String routeName = 'TaskListScreen';

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DataTime(),
            SizedBox(height: 5,),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) =>TaskContainerModel(),
                itemCount: 2,
              ),
            )
          ],
        ),
      ),
    );
  }
}

/*

  late DateTime _selectedDate;

  @override
  void initState() {
    super.initState();
    _resetSelectedDate();
  }

  void _resetSelectedDate() {
    _selectedDate = DateTime.now().add(const Duration(days: 0));
  }
  ------------
Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  'Calendar Timeline',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(color: Colors.tealAccent[100]),
                ),
              ),
              CalendarTimeline(
                showYears: true,
                initialDate: _selectedDate,
                firstDate: DateTime.now(),
                lastDate: DateTime.now().add(const Duration(days: 365 * 4)),
                onDateSelected: (date) => setState(() => _selectedDate = date),
                leftMargin: 20,
                monthColor: Colors.white70,
                dayColor: Colors.teal[200],
                dayNameColor: const Color(0xFF333A47),
                activeDayColor: Colors.white,
                activeBackgroundDayColor: Colors.redAccent[100],
                dotsColor: const Color(0xFF333A47),
                selectableDayPredicate: (date) => date.day != 23,
                locale: 'en',
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.teal[200]),
                  ),
                  child: const Text(
                    'RESET',
                    style: TextStyle(color: Color(0xFF333A47)),
                  ),
                  onPressed: () => setState(() => _resetSelectedDate()),
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: Text(
                  'Selected date is $_selectedDate',
                  style: const TextStyle(color: Colors.white),
                ),
              )


 */
