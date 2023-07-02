import 'package:flutter_pin_code_fields/flutter_pin_code_fields.dart';

import '../../../app/index.dart';
import '../../utils/enums.dart';
import '../../view_models/auth_view_model.dart';

class PasswordsRecoveryView extends StatelessWidget {
  final TextEditingController _otpController = TextEditingController();

  PasswordsRecoveryView({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final viewModel = Provider.of<AuthViewModel>(context, listen: false);
      viewModel.startCountdown();
    });
    final viewModel = Provider.of<AuthViewModel>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorManager.primary,
        title: Utils.popinMedText(
          'Verification',
          color: ColorManager.white,
          fontSize: 18.sp,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            20.spaceY,
            Utils.popinSemBoldText(
              'Verification Code',
              fontSize: 24.sp,
              textAlign: TextAlign.center,
            ),
            20.spaceY,
            Utils.popinSemBoldText(
              viewModel.recoveryType == RecoveryType.text
                  ? 'Your Verification code has been sent to +92317****23'
                  : 'Your Verification code has been sent to email***@gmail.com',
              fontSize: 12.sp,
              textAlign: TextAlign.center,
              color: ColorManager.darkGrey,
            ),
            20.spaceY,
            PinCodeFields(
              length: 4,
              controller: _otpController,
              fieldBorderStyle: FieldBorderStyle.square,
              responsive: false,
              fieldHeight: 40.0.h,
              fieldWidth: 40.h,
              borderWidth: 1.r,
              animationDuration: const Duration(milliseconds: 200),
              animationCurve: Curves.easeInOut,
              switchInAnimationCurve: Curves.easeIn,
              switchOutAnimationCurve: Curves.easeOut,
              animation: Animations.slideInDown,
              activeBorderColor: Colors.pink,
              activeBackgroundColor: Colors.pink.shade100,
              borderRadius: BorderRadius.circular(10.0),
              keyboardType: TextInputType.number,
              autoHideKeyboard: false,
              fieldBackgroundColor: Colors.black12,
              borderColor: Colors.black38,
              textStyle: TextStyleManager.popinsSemBold(
                fontSize: 18.sp,
              ),
              onComplete: (output) {
                // Your logic with pin code
                debugPrint(output);
              },
            ),
            20.spaceY,
            Utils.popinMedText(
              '${viewModel.seconds}',
              fontSize: 12.sp,
              textAlign: TextAlign.center,
              color: ColorManager.black,
            ),
          ],
        ),
      ),
    );
  }
}
