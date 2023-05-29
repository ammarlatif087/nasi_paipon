import 'package:nasi_paipon/app/index.dart';
import 'package:nasi_paipon/presentation/utils/enums.dart';

class AuthViewModel extends ChangeNotifier {
  ProfileType? profileType = ProfileType.user;
  var email = '';
  bool isPassObs = true;
  bool isConfObs = true;
  bool isRem = false;
  RecoveryType? recoveryType = RecoveryType.text;
  List<String> profileMenu = [
    'Edit Profile',
    'Privacy Policies',
    'Help Center',
  ];
  List<IconData> profileMenuIcon = [
    Icons.person,
    Icons.lock,
    Icons.question_mark_sharp,
  ];

  void selectedUser(ProfileType type) {
    profileType = type;

    notifyListeners();
  }

  void selectedType(RecoveryType type) {
    recoveryType = type;

    notifyListeners();
  }

  void onEmailChange(String value) {
    email = value;
    notifyListeners();
  }

  void showPassword() {
    isPassObs = !isPassObs;
    notifyListeners();
  }

  void showConfPass() {
    isConfObs = !isConfObs;
    notifyListeners();
  }

  void toggleRem(var value) {
    isRem = value;
    notifyListeners();
  }
}
