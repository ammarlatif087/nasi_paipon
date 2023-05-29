import '../../../app/index.dart';

class KitchenSectionView extends StatelessWidget {
  const KitchenSectionView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ListTile(
                onTap: () => Get.toNamed(
                  Routes.kitchensignUpRoute,
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.r)),
                tileColor: ColorManager.primary,
                title: Utils.popinMedText(
                  'Form Data',
                  fontSize: 16.sp,
                  color: ColorManager.white,
                ),
                trailing: Icon(
                  Icons.file_copy,
                  color: ColorManager.white,
                ),
              ),
              20.spaceY,
              ListTile(
                onTap: () => Get.toNamed(
                  Routes.qrScannerRoute,
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.r)),
                tileColor: ColorManager.primary,
                title: Utils.popinMedText(
                  'Qr Scanner',
                  fontSize: 16.sp,
                  color: ColorManager.white,
                ),
                trailing: Icon(
                  Icons.qr_code,
                  color: ColorManager.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
