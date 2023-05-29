import 'package:nasi_paipon/presentation/views/orders/pending_orders.dart';

import '../../../app/index.dart';
import 'completed_orders.dart';

class OrderView extends StatelessWidget {
  const OrderView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: ColorManager.primary,
          bottom: TabBar(
            indicatorColor: ColorManager.primary,
            tabs: const [
              Tab(
                text: 'Pending',
              ),
              Tab(
                text: 'Completed',
              ),
            ],
          ),
        ),
        body: const TabBarView(children: [
          PendingOrders(),
          CompletedOrders(),
        ]),
      ),
    );
  }
}
