import '../../../app/index.dart';

class MessengerView extends StatelessWidget {
  const MessengerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Utils.popinSemBoldText('Messenger'),
    );
  }
}
