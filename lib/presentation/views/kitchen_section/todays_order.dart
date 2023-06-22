import 'package:nasi_paipon/app/index.dart';

class TodaysOrderView extends StatelessWidget {
  final List<Order> orders = [
    Order('Biryani', '240', '57', '855', '171', '52', 632),
    Order('Kibab', '240', '57', '855', '171', '52', 632),
    Order('Bbq', '240', '57', '855', '171', '52', 632),
    Order('Roast', '456', '40', '546', '56', '89', 50),
    Order('Roast', '456', '40', '546', '56', '89', 50),
    Order('Biryani', '240', '57', '855', '171', '52', 632),
    Order('Kibab', '240', '57', '855', '171', '52', 632),
  ];
  final List<OrdersAgent> ordersAgent = [
    OrdersAgent('Mayo role', '240', '57', '855', '171', '52', 632),
    OrdersAgent('Burger', '240', '57', '855', '171', '52', 632),
    OrdersAgent('Pasta', '240', '57', '855', '171', '52', 632),
    OrdersAgent('Roast', '456', '40', '546', '56', '89', 50),
    OrdersAgent('Roast', '456', '40', '546', '56', '89', 50),
  ];

  TodaysOrderView({super.key});

  @override
  Widget build(BuildContext context) {
    double totalAmount = orders.fold(0, (sum, order) => sum + order.totalAmt);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorManager.primary,
        title: const Text('Order Details'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Utils.popinSemBoldText(
                'Orders',
                fontSize: 18.sp,
              ),
              20.spaceY,
              Utils.popinSemBoldText(
                'Order Date',
                fontSize: 18.sp,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Utils.popinMedText(
                    'From',
                    fontSize: 18.sp,
                  ),
                  Container(
                    padding: EdgeInsets.all(8.h),
                    color: ColorManager.darkGrey,
                    child: Utils.popinMedText(
                      '10/04/23',
                      fontSize: 18.sp,
                    ),
                  ),
                ],
              ),
              10.spaceY,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Utils.popinMedText(
                    'Untill',
                    fontSize: 18.sp,
                  ),
                  Container(
                    color: ColorManager.darkGrey,
                    padding: EdgeInsets.all(8.h),
                    child: Utils.popinMedText(
                      '10/04/23',
                      fontSize: 18.sp,
                    ),
                  ),
                ],
              ),
              20.spaceY,
              Utils.popinMedText(
                'Kitchen 1',
                fontSize: 16.sp,
              ),
              20.spaceY,
              Utils.popinMedText(
                'Near Fazal mosque street nothing',
                fontSize: 16.sp,
              ),
              20.spaceY,
              Utils.popinMedText(
                'User',
                fontSize: 16.sp,
              ),
              10.spaceY,
              Table(
                border: TableBorder.all(),
                columnWidths: const {
                  0: FlexColumnWidth(1),
                  1: FlexColumnWidth(2),
                  2: FlexColumnWidth(1),
                  3: FlexColumnWidth(2),
                  4: FlexColumnWidth(1),
                },
                children: [
                  TableRow(
                    children: [
                      Center(
                        child: Utils.popinSemBoldText('Menu', fontSize: 12.sp),
                      ),
                      Center(
                        child: Utils.popinSemBoldText('Weight in grams',
                            fontSize: 12.sp),
                      ),
                      Center(
                        child: Utils.popinSemBoldText('Successful orders',
                            fontSize: 12.sp),
                      ),
                      Center(
                        child: Utils.popinSemBoldText('Sales in RM',
                            fontSize: 12.sp),
                      ),
                      Center(
                        child: Utils.popinSemBoldText('Commission 20% In RM ',
                            fontSize: 12.sp),
                      ),
                      Center(
                        child: Utils.popinSemBoldText('SST 6% In RM ',
                            fontSize: 12.sp),
                      ),
                      Center(
                        child: Utils.popinSemBoldText('Amount in RM ',
                            fontSize: 12.sp),
                      ),
                    ],
                  ),
                ],
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: orders.length,
                itemBuilder: (context, index) {
                  return OrderDetailsWidget(order: orders[index]);
                },
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Utils.popinSemBoldText('Total:  $totalAmount'),
                ],
              ),
              20.spaceY,
              Utils.popinMedText(
                'Agent',
                fontSize: 16.sp,
              ),
              10.spaceY,
              ListView.builder(
                shrinkWrap: true,
                itemCount: ordersAgent.length,
                itemBuilder: (context, index) {
                  return OrderDetailsAgentWidget(order: ordersAgent[index]);
                },
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Utils.popinSemBoldText('Total:  $totalAmount'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OrderDetailsWidget extends StatelessWidget {
  final Order order;

  const OrderDetailsWidget({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.all(),
      columnWidths: const {
        0: FlexColumnWidth(1),
        1: FlexColumnWidth(2),
        2: FlexColumnWidth(1),
        3: FlexColumnWidth(2),
        4: FlexColumnWidth(1),
      },
      children: [
        TableRow(
          children: [
            Center(child: Utils.popinRegText(order.menu, fontSize: 12.sp)),
            Center(child: Utils.popinRegText(order.weight, fontSize: 12.sp)),
            Center(
                child:
                    Utils.popinRegText(order.successful0rder, fontSize: 12.sp)),
            Center(child: Utils.popinRegText(order.salesRm, fontSize: 12.sp)),
            Center(
                child: Utils.popinRegText(order.commisionRm, fontSize: 12.sp)),
            Center(child: Utils.popinRegText(order.sstRm, fontSize: 12.sp)),
            Center(
                child: Utils.popinRegText(order.totalAmt.toString(),
                    fontSize: 12.sp)),
          ],
        ),
      ],
    );
  }
}

class OrderDetailsAgentWidget extends StatelessWidget {
  final OrdersAgent order;

  const OrderDetailsAgentWidget({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.all(),
      columnWidths: const {
        0: FlexColumnWidth(1),
        1: FlexColumnWidth(2),
        2: FlexColumnWidth(1),
        3: FlexColumnWidth(2),
        4: FlexColumnWidth(1),
      },
      children: [
        TableRow(
          children: [
            Center(child: Utils.popinRegText(order.menu, fontSize: 12.sp)),
            Center(child: Utils.popinRegText(order.weight, fontSize: 12.sp)),
            Center(
                child:
                    Utils.popinRegText(order.successful0rder, fontSize: 12.sp)),
            Center(child: Utils.popinRegText(order.salesRm, fontSize: 12.sp)),
            Center(
                child: Utils.popinRegText(order.commisionRm, fontSize: 12.sp)),
            Center(child: Utils.popinRegText(order.sstRm, fontSize: 12.sp)),
            Center(
                child: Utils.popinRegText(order.totalAmt.toString(),
                    fontSize: 12.sp)),
          ],
        ),
      ],
    );
  }
}

class Order {
  final String menu;
  final String weight;
  final String successful0rder;
  final String salesRm;
  final String commisionRm;
  final String sstRm;
  final double totalAmt;

  Order(this.menu, this.weight, this.successful0rder, this.salesRm,
      this.commisionRm, this.sstRm, this.totalAmt);
}

class OrdersAgent {
  final String menu;
  final String weight;
  final String successful0rder;
  final String salesRm;
  final String commisionRm;
  final String sstRm;
  final double totalAmt;

  OrdersAgent(this.menu, this.weight, this.successful0rder, this.salesRm,
      this.commisionRm, this.sstRm, this.totalAmt);
}
