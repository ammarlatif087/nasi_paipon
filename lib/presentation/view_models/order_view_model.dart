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

  void initializeDate(DateTime initialDate) {
    _selectedDate = initialDate;
    notifyListeners();
  }

  void selectDate(DateTime date) {
    _selectedDate = date;
    notifyListeners();
  }

  void selectTime(TimeOfDay time) {
    _selectedTime = time;
    notifyListeners();
  }

  Future<DateTime?> showDatePickerDialog(BuildContext context) async {
    final DateTime? selectedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(), // Set the first selectable date as today
      lastDate: DateTime(2030),
      selectableDayPredicate: (DateTime date) {
        // Enable or disable date selection based on the predicate
        return date.isAfter(DateTime.now().subtract(const Duration(days: 1)));
      },
    );

    if (selectedDate != null) {
      selectDate(selectedDate);
    }

    return selectedDate;
  }

  Future<TimeOfDay?> showTimePickerDialog(BuildContext context) async {
    final TimeOfDay? selectedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (selectedTime != null) {
      selectTime(selectedTime);
    }

    return selectedTime;
  }
}
