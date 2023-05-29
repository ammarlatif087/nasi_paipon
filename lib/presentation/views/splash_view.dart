import 'dart:async';

import '../../app/index.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  late Timer _timer;

  void _splashScreenDelay() {
    _timer = Timer(const Duration(seconds: 3), _goNext);
  }

  void _goNext() {
    Navigator.pushReplacementNamed(context, Routes.userTypeRoute);
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
