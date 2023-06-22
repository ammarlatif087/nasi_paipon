import 'package:nasi_paipon/app/index.dart';

class SetHolidaysViewModel extends ChangeNotifier {
  bool _isChecked = false;

  bool get isChecked => _isChecked;
  final List<DateTime> _selectedDates = [];

  List<DateTime> get selectedDates => _selectedDates;

  void addSelectedDate(DateTime date) {
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

  void toggleCheckbox(bool value) {
    _isChecked = value;
    notifyListeners();
  }

  Future<void> showDatePickerDialog(BuildContext context) async {
    final DateTime? selectedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(), // Set the first selectable date as today
      lastDate: DateTime(2030),
      selectableDayPredicate: (DateTime date) {
        // Enable or disable date selection based on the predicate
        return date.isAfter(DateTime.now().subtract(const Duration(days: 1)));
      },
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.light().copyWith(
            colorScheme: const ColorScheme.light().copyWith(
              primary: Colors.blue,
            ),
          ),
          child: child!,
        );
      },
    );

    if (selectedDate != null) {
      final model = Provider.of<SetHolidaysViewModel>(context, listen: false);
      if (model.isDateSelected(selectedDate)) {
        model.removeSelectedDate(selectedDate);
      } else {
        model.addSelectedDate(selectedDate);
      }
    }
  }
}
