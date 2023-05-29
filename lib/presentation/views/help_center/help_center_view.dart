import '../../../app/index.dart';
import 'contact_us.dart';
import 'faq_view.dart';

class HelpCenterView extends StatelessWidget {
  const HelpCenterView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Utils.popinMedText(
            'Help Center',
            color: ColorManager.white,
            fontSize: 18.sp,
          ),
          automaticallyImplyLeading: true,
          backgroundColor: ColorManager.primary,
          bottom: TabBar(
            indicatorColor: ColorManager.primary,
            tabs: const [
              Tab(
                text: 'FAQ',
              ),
              Tab(
                text: 'Contact Us',
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            FaqView(),
            ContactUsView(),
          ],
        ),
      ),
    );
  }
}
