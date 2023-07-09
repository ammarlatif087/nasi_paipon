import 'dart:async';
import 'dart:convert';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:nasi_paipon/presentation/models/user.dart';

import '../../app/index.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  late Timer _timer;

  void _splashScreenDelay() {
    UserHelper.getCurrentUser(onSuccess: (jsonResponse){
      _goNext(jsonResponse);

    },onError: (err){
      Fluttertoast.showToast(
          msg: err,
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0
      );

    },onTokenFailure: (){
      Navigator.pushReplacementNamed(context, Routes.userTypeRoute);
    });
  }

  void _goNext(jsonResponse) {
    // Navigator.pushReplacementNamed(context, Routes.pickUplocRoute);
    SharedPreferencesUtil.addItem('user', jsonResponse.toString());
    User user = User.fromJson(jsonResponse);
    if(user.userType=='user'){
      //TODO navigate to specific user main screen
      Navigator.pushReplacementNamed(context, Routes.bottomNavRoute);
    }else if(user.userType=="agent"){
      //TODO same here
      Navigator.pushReplacementNamed(context,Routes.bottomNavRoute);
    }else{
      Navigator.pushReplacementNamed(context,Routes.kitchenSectionRoute);
    }

  }

  @override
  void initState() {
    _splashScreenDelay();
    super.initState();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: CircleAvatar(
            radius: 130.r,
            backgroundImage: const AssetImage(
              AppImages.logo,
            ),
          ),
        ),
      ),
    );
  }
}
