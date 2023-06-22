import 'package:nasi_paipon/app/index.dart';

import '../../common/app_button.dart';

class ProgressView extends StatelessWidget {
  const ProgressView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(14.0.w),
          child: Column(
            children: [
              Utils.popinSemBoldText(
                'Thank you for your application',
                fontSize: 24.sp,
              ),
              10.spaceY,
              Utils.popinMedText(
                'A long form verification email has been sent to your registered e-mail address. Kindly fill in your kitchen details and upload the necessary documents.',
                fontSize: 16.sp,
                textAlign: TextAlign.center,
              ),
              10.spaceY,
              Utils.popinMedText(
                'During this difficult period, there is a large number of incoming applications, our representative will get in touch with you soonest possible.',
                fontSize: 16.sp,
                textAlign: TextAlign.center,
              ),
              10.spaceY,
              Utils.popinMedText(
                'We appreciate your understanding in this matter',
                fontSize: 16.sp,
                textAlign: TextAlign.center,
              ),
              10.spaceY,
              Utils.popinMedText(
                'Nasi Paipon',
                fontSize: 16.sp,
                textAlign: TextAlign.center,
              ),
              30.spaceY,
              Utils.popinSemBoldText(
                'Terima kasih atas permohonan anda',
                fontSize: 24.sp,
              ),
              10.spaceY,
              Utils.popinMedText(
                'Kami telah menghantar borang pendaftaran ke e-mel berdaftar anda. Sila isi dan muat naik dokumen dapur anda..',
                fontSize: 16.sp,
                textAlign: TextAlign.center,
              ),
              10.spaceY,
              Utils.popinMedText(
                'Dalam keadaan yang sukar ini, kami sedang menerima jumlah permohonan yang amat tinggi. Pihak kami akan berusaha sedaya upaya untuk bertindak atas permohonan anda dengan secepat mungkin.',
                fontSize: 16.sp,
                textAlign: TextAlign.center,
              ),
              10.spaceY,
              Utils.popinMedText(
                'Terima kasih atas kerjasama anda..',
                fontSize: 16.sp,
                textAlign: TextAlign.center,
              ),
              10.spaceY,
              Utils.popinMedText(
                'Nasi Paipon',
                fontSize: 16.sp,
                textAlign: TextAlign.center,
              ),
              const Spacer(),
              AppButton(
                bgColor: ColorManager.primary,
                radius: 10.r,
                onPress: () {
                  Get.to(Routes.loginRoute);
                },
                child: Utils.popinMedText(
                  'Ok',
                  color: ColorManager.white,
                  fontSize: 18.sp,
                ),
              ),
              10.spaceY,
            ],
          ),
        ),
      ),
    );
  }
}
