import 'package:nasi_paipon/app/index.dart';
import 'package:nasi_paipon/presentation/common/app_button.dart';

import '../../../view_models/bulk_message_view_model.dart';

class BulkMessageView extends StatelessWidget {
  const BulkMessageView({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<BulkMessageViewModel>(context);
    List<String> userNames = [
      'Yaun chuin',
      'Ping Pong',
      'Yaun christ',
      'christ chuin',
    ];
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: ColorManager.primary,
          title: Utils.popinMedText(
            'Bulk Message',
            color: ColorManager.white,
            fontSize: 18.sp,
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(18.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Utils.popinSemBoldText(
                  'Send to:',
                  fontSize: 18.sp,
                ),
                Row(
                  children: [
                    Radio<MessageOption>(
                      value: MessageOption.user,
                      groupValue: viewModel.selectedOption,
                      onChanged: (value) {
                        viewModel.setSelectedOption(
                          value!,
                        );
                      },
                    ),
                    Utils.popinRegText(
                      'User',
                      fontSize: 16.sp,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Radio<MessageOption>(
                      value: MessageOption.allUser,
                      groupValue: viewModel.selectedOption,
                      onChanged: (value) {
                        viewModel.setSelectedOption(
                          value!,
                        );
                      },
                    ),
                    Utils.popinRegText(
                      'All User In sub region',
                      fontSize: 16.sp,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Radio<MessageOption>(
                      value: MessageOption.myAgents,
                      groupValue: viewModel.selectedOption,
                      onChanged: (value) {
                        viewModel.setSelectedOption(
                          value!,
                        );
                      },
                    ),
                    Utils.popinRegText(
                      'All User In sub region',
                      fontSize: 16.sp,
                    ),
                  ],
                ),
                10.spaceY,
                Utils.popinSemBoldText(
                  'Total user name ${userNames.length}',
                  fontSize: 18.sp,
                ),
                10.spaceY,
                Column(
                  children: List.generate(
                      userNames.length,
                      (index) => Utils.popinRegText(
                            userNames[index],
                            fontSize: 16.sp,
                          )),
                ),
                10.spaceY,
                Utils.popinSemBoldText(
                  'Previous Messages',
                  fontSize: 24.sp,
                ),
                10.spaceY,
                Column(
                  children: List.generate(
                      6,
                      (index) => ListTile(
                            contentPadding: EdgeInsets.zero,
                            title: Utils.popinMedText('Name'),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Utils.popinMedText(
                                    'this is a previous dummy messages '),
                                Utils.popinMedText('Images'),
                              ],
                            ),
                          )),
                ),
                10.spaceY,
                TextField(
                  maxLines: 5,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: ColorManager.grey,
                    suffixIcon: const Icon(
                        Icons.image), // Replace with your desired suffix icon
                    hintText: 'Enter your message',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    // Additional decoration properties if needed
                  ),
                ),
                10.spaceY,
                AppButton(
                  radius: 10.r,
                  bgColor: ColorManager.primary,
                  child: Utils.popinMedText('Send',
                      color: ColorManager.white, fontSize: 18.sp),
                  onPress: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
