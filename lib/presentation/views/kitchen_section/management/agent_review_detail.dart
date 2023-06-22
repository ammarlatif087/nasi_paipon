import 'package:nasi_paipon/app/index.dart';
import 'package:nasi_paipon/presentation/common/textform_field.dart';

import '../../../common/app_button.dart';

class AgentReviewDetails extends StatelessWidget {
  const AgentReviewDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(18.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 300.h,
                decoration: BoxDecoration(
                  color: ColorManager.accent,
                  image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      AppImages.food,
                    ),
                  ),
                  borderRadius: BorderRadius.circular(10.r),
                ),
              ),
              10.spaceY,
              Utils.popinSemBoldText(
                'Biryani',
                fontSize: 18.sp,
              ),
              10.spaceY,
              Utils.popinSemBoldText(
                'Reviews(1989)',
                fontSize: 18.sp,
              ),
              10.spaceY,
              Expanded(
                  child: ListView.builder(
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        leading: const CircleAvatar(
                          backgroundImage: AssetImage(
                            AppImages.kitchen,
                          ),
                        ),
                        title: Utils.popinSemBoldText('Name'),
                        subtitle: Utils.popinMedText('30  min ago'),
                      ),
                      Utils.popinSemBoldText('Very nice'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.thumb_up_alt_outlined,
                                size: 20.sp,
                              ),
                              5.spaceX,
                              Utils.popinMedText(
                                'Like',
                                fontSize: 16.sp,
                              ),
                            ],
                          ),
                          InkWell(
                            onTap: () {
                              _showModalBottomSheet(context);
                            },
                            child: Row(
                              children: [
                                Icon(
                                  Icons.message,
                                  size: 20.sp,
                                ),
                                5.spaceX,
                                Utils.popinMedText(
                                  'Reply',
                                  fontSize: 16.sp,
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  );
                },
              ))
            ],
          ),
        ),
      ),
    );
  }

  void _showModalBottomSheet(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              const TextFieldWidget(
                hintText: 'Reply...',
              ),
              const SizedBox(height: 16.0),
              SizedBox(
                width: 120.w,
                child: AppButton(
                  bgColor: ColorManager.primary,
                  radius: 10.r,
                  onPress: () {
                    // Handle send button action here
                  },
                  child: Utils.popinMedText(
                    'Send',
                    fontSize: 18.sp,
                    color: ColorManager.white,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
