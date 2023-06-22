import 'package:nasi_paipon/app/index.dart';

import '../common/app_button.dart';

class MenuSettingViewModel extends ChangeNotifier {
  List<String> menuName = [
    'Biryani',
    'Biryani',
    'Biryani',
    'Biryani',
    'Biryani',
  ];

  void handlePopupMenuSelection(String value) {
    showDialog(
      context: Get.overlayContext!,
      builder: (BuildContext context) {
        return AlertDialog(
          content: SizedBox(
            height: 250.h,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Utils.popinSemBoldText(
                  'Choose a role',
                  fontSize: 20.sp,
                ),
                AppButton(
                  bgColor: ColorManager.primary,
                  radius: 10.r,
                  child: Utils.popinMedText(
                    'User',
                    fontSize: 18.sp,
                    color: ColorManager.white,
                  ),
                  onPress: () {
                    Navigator.pop(context); // Close the dialog
                  },
                ),
                AppButton(
                  bgColor: ColorManager.primary,
                  radius: 10.r,
                  child: Utils.popinMedText(
                    'Agent',
                    fontSize: 18.sp,
                    color: ColorManager.white,
                  ),
                  onPress: () {
                    Navigator.pop(context); // Close the dialog
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

void onDelete() {
  // Perform the delete operation here
  print('Delete operation performed');
}
