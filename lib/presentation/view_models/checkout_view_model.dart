import 'package:nasi_paipon/app/index.dart';

class CheckoutViewModel extends ChangeNotifier {
  int count = 1;
  int price = 120;

  void increment() {
    count++;
    notifyListeners();
  }

  void decrement() {
    if (count > 1) {
      count--;
      notifyListeners();
    }
  }

  int calculateTotalPrice() {
    return count * price;
  }
}
