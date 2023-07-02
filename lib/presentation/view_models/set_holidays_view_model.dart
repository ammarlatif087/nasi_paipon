import 'package:nasi_paipon/app/index.dart';

enum DatePickerMode { single, multiple }

class SetHolidaysViewModel extends ChangeNotifier {
  TimeOfDay? _selectedStartTime;
  TimeOfDay? _selectedEndTime;

  TimeOfDay? get selectedStartTime => _selectedStartTime;
  TimeOfDay? get selectedEndTime => _selectedEndTime;

  final List<DateTime> _selectedDates = [];
  DatePickerMode _datePickerMode = DatePickerMode.multiple;

  List<DateTime> get selectedDates => _selectedDates;

  DatePickerMode get datePickerMode => _datePickerMode;

  void setDatePickerMode(DatePickerMode mode) {
    _datePickerMode = mode;
    notifyListeners();
  }

  void addSelectedDate(DateTime date) {
    if (_datePickerMode == DatePickerMode.single) {
      _selectedDates.clear();
    }
    _selectedDates.add(date);
    notifyListeners();
  }

  void removeSelectedDate(DateTime date) {
    _selectedDates.remove(date);
    notifyListeners();
  }

  bool isDateSelected(DateTime date) {
    return _selectedDates.contains(date);
  }

  Future<void> showDatePickerDialog(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(DateTime.now().year - 1),
      lastDate: DateTime(DateTime.now().year + 1),
      selectableDayPredicate: (DateTime date) {
        return !isDateSelected(date);
      },
    );

    if (picked != null) {
      addSelectedDate(picked);
    }
  }

  Future<TimeOfDay?> startTimePickerDialog(BuildContext context) async {
    final TimeOfDay now = TimeOfDay.now();
    final TimeOfDay initialTime = now;

    final TimeOfDay? selectedTime = await showTimePicker(
      context: context,
      initialTime: initialTime,
    );

    if (selectedTime != null) {
      selectStartTime(selectedTime);
    }

    return selectedTime;
  }

  void selectStartTime(TimeOfDay time) {
    _selectedStartTime = time;
    notifyListeners();
  }

  Future<TimeOfDay?> endPickerDialog(BuildContext context) async {
    final TimeOfDay now = TimeOfDay.now();
    final TimeOfDay initialTime = now;

    final TimeOfDay? selectedEndTime = await showTimePicker(
      context: context,
      initialTime: initialTime,
    );

    if (selectedEndTime != null) {
      selectEndTime(selectedEndTime);
    }

    return selectedEndTime;
  }

  void selectEndTime(TimeOfDay time) {
    _selectedEndTime = time;
    notifyListeners();
  }
}
