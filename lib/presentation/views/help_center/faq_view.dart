import 'package:nasi_paipon/app/index.dart';
import 'package:nasi_paipon/presentation/view_models/help_center_view_model.dart';

class FaqView extends StatelessWidget {
  const FaqView({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<HelpCenterViewModel>(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16.0.r),
          child: ExpansionPanelList(
            elevation: 1,
            expansionCallback: (int index, bool isExpanded) {
              viewModel.toggleExpansion(index);
            },
            children: viewModel.data.map<ExpansionPanel>((Item item) {
              return ExpansionPanel(
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return ListTile(
                    title: Utils.popinSemBoldText(item.headerValue),
                  );
                },
                body: ListTile(
                  title: Utils.popinRegText(item.expandedValue),
                ),
                isExpanded: item.isExpanded,
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
