import '../../../app/index.dart';
import '../../common/privacy_policy_widget.dart';

class PrivacyPolicyView extends StatelessWidget {
  const PrivacyPolicyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorManager.primary,
        title: Utils.popinMedText(
          'Privacy Policy',
          fontSize: 18.sp,
          color: ColorManager.white,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0.r),
        child: ListView(
          children: [
            const PrivacyPolicyWidget(
              heading: '1.Types of Data We Collect',
              paragraph:
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley',
            ),
            20.spaceY,
            const PrivacyPolicyWidget(
              heading: '2.Use Of Your Personal Data',
              paragraph:
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley',
            ),
            20.spaceY,
            const PrivacyPolicyWidget(
              heading: '3. Disclosure Of Your Personal Data',
              paragraph:
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley',
            ),
          ],
        ),
      ),
    );
  }
}
