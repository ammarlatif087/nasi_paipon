import 'package:nasi_paipon/app/index.dart';

import '../views/cart/cart_view.dart';
import '../views/home/home_view.dart';
import '../views/messenger/messenger_view.dart';
import '../views/orders/order_view.dart';
import '../views/profile/profile_view.dart';

class BottomNavViewModel extends ChangeNotifier {
  int _currentIndex = 0;
  int get currentIndex => _currentIndex;

  final List<Widget> _bodyWidget = const [
    HomeView(),
    CartView(),
    MessengerView(),
    OrderView(),
    ProfileView(),
  ];
  List<Widget> get bodyWidget => [..._bodyWidget];

  void onTap(int index) {
    _currentIndex = index;
    notifyListeners();
  }
}
