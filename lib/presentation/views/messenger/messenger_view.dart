import '../../../app/index.dart';

class MessengerView extends StatelessWidget {
  const MessengerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
            itemCount: 5,
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                onTap: () {
                  Get.toNamed(Routes.chatViewRoute);
                },
                title: Utils.popinMedText('Username'),
              );
            },
          ))
        ],
      ),
    );
  }
}
