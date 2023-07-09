import 'dart:async';


import 'package:image_picker/image_picker.dart';
import 'package:nasi_paipon/app/index.dart';

enum AccountType { personal, company }

class AuthViewModel extends ChangeNotifier {
  ProfileType? profileType = ProfileType.user;
  var email = '';
  var password = '';
  bool isPassObs = true;
  bool isConfObs = true;
  bool isRem = false;

  int seconds = 60;
  Timer? timer;
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
  void onPasswordChange(String value) {
    password = value;
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

  void startCountdown() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (seconds > 0) {
        seconds--;
        print(seconds);
        notifyListeners();
      } else {
        timer.cancel();
        // Countdown complete, perform your desired logic here
      }
    });
  }

  String? imagePath;

  Future<void> pickImage() async {
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(source: ImageSource.gallery);

    if (pickedImage != null) {
      imagePath = pickedImage.path;
      notifyListeners();
    }
  }

  AccountType _selectedOption = AccountType.personal;
  AccountType get selectedOption => _selectedOption;
  void setSelectedOption(AccountType option) {
    _selectedOption = option;
    print(_selectedOption);
    notifyListeners();
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  login() async {
    HttpUtil.post(loginUrl,'',{
      "email":email,"password":password
    }, onSuccess: (response) {
      print("OnResponse");
      // print(response);
      var token = response['access_token'];
      if(token!=null){
        SharedPreferencesUtil.saveUserToken(token);
        Fluttertoast.showToast(
            msg: "Successfully Login",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.green,
            textColor: Colors.white,
            fontSize: 16.0
        );
        Get.toNamed(Routes.pickUplocRoute);
      }

    }, onFailure: (error) {
      print("OnError");
      print(error);
      Fluttertoast.showToast(
          msg: error,
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0
      );
    });
  }
}
