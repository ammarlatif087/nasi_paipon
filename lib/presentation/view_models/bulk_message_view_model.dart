import 'package:nasi_paipon/app/index.dart';

enum MessageOption { user, allUser, myAgents }

class BulkMessageViewModel extends ChangeNotifier {
  MessageOption _selectedOption = MessageOption.user;
  MessageOption get selectedOption => _selectedOption;
  void setSelectedOption(MessageOption option) {
    _selectedOption = option;
    notifyListeners();
  }
}
