import 'package:nasi_paipon/app/index.dart';

class TodaysOrderView extends StatelessWidget {
  final List<Order> orders = [
    Order('1', 'John Doe', '1234567890', '10:00 AM', 'Pending'),
    Order('3', 'Jane Smith', '9876543210', '11:30 AM', 'Completed'),
    Order('2', 'Jane Smith', '9876543210', '11:30 AM', 'Completed'),
    Order('2', 'Jane Smith', '9876543210', '11:30 AM', 'Completed'),
    Order('2', 'Jane Smith', '9876543210', '11:30 AM', 'Completed'),
    Order('2', 'Jane Smith', '9876543210', '11:30 AM', 'Completed'),
    Order('2', 'Jane Smith', '9876543210', '11:30 AM', 'Completed'),
    // Add more orders here
  ];

  TodaysOrderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorManager.primary,
        title: const Text('Order Details'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
        child: Column(
          children: [
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
                      child: Utils.popinSemBoldText('No', fontSize: 12.sp),
                    ),
                    Center(
                      child:
                          Utils.popinSemBoldText('Username', fontSize: 12.sp),
                    ),
                    Center(
                      child: Utils.popinSemBoldText('Phone', fontSize: 12.sp),
                    ),
                    Center(
                      child: Utils.popinSemBoldText('Pickup time',
                          fontSize: 12.sp),
                    ),
                    Center(
                      child: Utils.popinSemBoldText('Status', fontSize: 12.sp),
                    ),
                  ],
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: orders.length,
                itemBuilder: (context, index) {
                  return OrderDetailsWidget(order: orders[index]);
                },
              ),
            ),
          ],
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
            Center(child: Utils.popinRegText(order.no, fontSize: 12.sp)),
            Center(child: Utils.popinRegText(order.username, fontSize: 12.sp)),
            Center(child: Utils.popinRegText(order.phone, fontSize: 12.sp)),
            Center(
                child: Utils.popinRegText(order.pickupTime, fontSize: 12.sp)),
            Center(child: Utils.popinRegText(order.status, fontSize: 12.sp)),
          ],
        ),
      ],
    );
  }
}

class Order {
  final String no;
  final String username;
  final String phone;
  final String pickupTime;
  final String status;

  Order(this.no, this.username, this.phone, this.pickupTime, this.status);
}
