import 'package:nasi_paipon/presentation/view_models/help_center_view_model.dart';

import '../../../app/index.dart';

class ContactUsView extends StatelessWidget {
  const ContactUsView({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<HelpCenterViewModel>(context);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20.r),
        child: Column(
          children: List.generate(
              6,
              (index) => Padding(
                    padding: EdgeInsets.only(bottom: 10.h),
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                        10.r,
                      )),
                      child: ListTile(
                        onTap: () {},
                        leading: Icon(viewModel.icons[index]),
                        title:
                            Utils.popinMedText(viewModel.helpNetworks[index]),
                      ),
                    ),
                  )),
        ),
      ),
    );
  }
}
