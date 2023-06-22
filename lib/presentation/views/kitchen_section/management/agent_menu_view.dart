import 'package:nasi_paipon/app/index.dart';

import '../../../view_models/edit_menu_view_model.dart';

class AgentMenuView extends StatelessWidget {
  const AgentMenuView({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<EditMenuViewModel>(context);
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: ColorManager.primary,
          onPressed: () {
            Get.toNamed(Routes.addNewAgentMenuRoute);
          },
          child: const Icon(Icons.add),
        ),
        body: Column(
          children: [
            Utils.popinSemBoldText(
              'Agent Menu',
              fontSize: 24.sp,
            ),
            Expanded(
                child: ListView.separated(
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: ListTile(
                    leading: Image.asset(
                      AppImages.kitchen,
                    ),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Utils.popinSemBoldText(
                          'Biryani',
                          fontSize: 18.sp,
                        ),
                        Utils.popinSemBoldText(
                          'Weight 250g',
                          fontSize: 18.sp,
                        ),
                        Utils.popinSemBoldText(
                          'Size 200x230x130',
                          fontSize: 18.sp,
                        ),
                      ],
                    ),
                    trailing: PopupMenuButton<String>(
                      padding: EdgeInsets.zero,
                      child: const Icon(Icons.more_vert),
                      onSelected: (value) {
                        value == 'Edit'
                            ? Get.toNamed(Routes.editAgentMenuRoute)
                            : viewModel.handleDelete();
                      },
                      itemBuilder: (context) => [
                        const PopupMenuItem<String>(
                          value: 'Edit',
                          child: Text('Edit'),
                        ),
                        const PopupMenuItem<String>(
                          value: 'Delete',
                          child: Text('Delete'),
                        ),
                      ],
                    ),
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return 10.spaceY;
              },
            ))
          ],
        ),
      ),
    );
  }
}
