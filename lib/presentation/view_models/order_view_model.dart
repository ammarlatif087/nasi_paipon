import 'package:flutter/material.dart';

class OrdersViewModel extends ChangeNotifier {
  DateTime? _selectedDate;
  TimeOfDay? _selectedTime;
  final List<String> _itemList = [
    'Pizza',
    'Pizza',
    'Pizza',
    'Pizza',
    'Pizza',
    'Pizza',
    'Pizza',
    'Pizza',
  ];

  DateTime? get selectedDate => _selectedDate;
  TimeOfDay? get selectedTime => _selectedTime;
  List<String> get itemList => _itemList;

  void selectDate(DateTime date) {
    _selectedDate = date;
    notifyListeners();
  }

  void selectTime(TimeOfDay time) {
    _selectedTime = time;
    notifyListeners();
  }

  Future<DateTime?> showDatePickerDialog(BuildContext context) async {
    final DateTime now = DateTime.now();
    DateTime initialDate = now; // Set the initial selectable date as today

    // Check if the initialDate satisfies the selectableDayPredicate
    if (!selectableDayPredicate(initialDate)) {
      initialDate = now.add(const Duration(
          days: 1)); // Set initialDate to the next selectable date
    }

    final DateTime? selectedDate = await showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: now,
      lastDate: now.add(const Duration(
          days: 2)), // Allow selection for the next two consecutive days
      selectableDayPredicate: selectableDayPredicate,
    );

    if (selectedDate != null) {
      selectDate(selectedDate);
    }

    return selectedDate;
  }

  bool selectableDayPredicate(DateTime date) {
    final DateTime now = DateTime.now();
    final DateTime maxSelectableDate = now.add(const Duration(
        days: 2)); // Limit selection to the next two consecutive days

    return date.isAfter(now.subtract(const Duration(days: 1))) &&
        date.isBefore(maxSelectableDate);
  }

  Future<TimeOfDay?> showTimePickerDialog(BuildContext context) async {
    final TimeOfDay now = TimeOfDay.now();
    final TimeOfDay initialTime =
        now; // Set the initial selectable time as the current time

    final TimeOfDay? selectedTime = await showTimePicker(
      context: context,
      initialTime: initialTime,
    );

    if (selectedTime != null) {
      if (!isTimeWithinLimit(selectedTime)) {
        _showTimeOutOfRangeError(context);
        return null;
      }
      selectTime(selectedTime);
    }

    return selectedTime;
  }

  void _showTimeOutOfRangeError(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          title: const Text('Invalid Time'),
          content: const Text('Please select a time between 9 AM and 5 PM.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(dialogContext).pop();
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  bool isTimeWithinLimit(TimeOfDay time) {
    final int hour = time.hour;
    return hour >= 9 && hour <= 17; // Limit selection to 9 AM to 5 PM
  }
}
