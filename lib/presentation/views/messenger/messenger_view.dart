import 'package:nasi_paipon/presentation/common/app_button.dart';

import '../../../app/index.dart';

class MessengerView extends StatelessWidget {
  const MessengerView({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorManager.primary,
        title: Utils.popinMedText(
          'Users',
          fontSize: 18.sp,
          color: ColorManager.white,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSearchField(controller, (e) => null),
            20.spaceY,
            SizedBox(
              width: 120.w,
              height: 40.h,
              child: AppButton(
                border: true,
                bgColor: ColorManager.white,
                radius: 20.r,
                child: Utils.popinMedText(
                  'Unread',
                  fontSize: 18.sp,
                ),
                onPress: () {},
              ),
            ),
            Expanded(
                child: ListView.builder(
              itemCount: 5,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  onTap: () {
                    Get.toNamed(Routes.chatViewRoute);
                  },
                  leading: const CircleAvatar(
                    backgroundImage: AssetImage(AppImages.kitchen),
                  ),
                  title: Utils.popinMedText('christy yaun'),
                  subtitle: Utils.popinMedText('yan afk aflgh aljgj la'),
                  trailing: Utils.popinMedText('6/07/23'),
                );
              },
            ))
          ],
        ),
      ),
    );
  }

  Widget _buildSearchField(TextEditingController controller, function(e)) {
    return TextFormField(
      onChanged: function,
      controller: controller,
      cursorColor: ColorManager.primary,
      decoration: InputDecoration(
        filled: true,
        fillColor: ColorManager.grey,
        focusColor: ColorManager.primary,
        contentPadding: EdgeInsets.zero,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(
            15.r,
          ),
        ),
        prefixIcon: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 18.w,
              vertical: 13.w,
            ),
            child: Icon(
              Icons.search,
              color: ColorManager.primary,
            )),
        hintText: 'Search',
        hintStyle: TextStyleManager.popinsReg(
          color: ColorManager.primary.withOpacity(0.4),
          fontSize: 12.sp,
        ),
      ),
    );
  }
}
