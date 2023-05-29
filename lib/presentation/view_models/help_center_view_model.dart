import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nasi_paipon/app/index.dart';

class HelpCenterViewModel extends ChangeNotifier {
  final List<Item> _data = generateItems(5);

  List<Item> get data => _data;

  List<IconData> get icons => icon;

  List<String> get helpNetworks => helpNetwork;

  void toggleExpansion(int index) {
    _data[index].isExpanded = !_data[index].isExpanded;
    notifyListeners();
  }
}

class Item {
  Item({
    required this.expandedValue,
    required this.headerValue,
    this.isExpanded = false,
  });

  String expandedValue;
  String headerValue;
  bool isExpanded;
}

List<IconData> icon = [
  Icons.support_agent_outlined,
  FontAwesomeIcons.whatsapp,
  FontAwesomeIcons.globe,
  FontAwesomeIcons.facebook,
  FontAwesomeIcons.twitter,
  FontAwesomeIcons.instagram,
];
List<String> helpNetwork = [
  'Customer Service',
  'WhatsApp',
  'Website',
  'Facebook',
  'Twitter',
  'Instagram',
];

List<String> header = [
  'What is Nasi Paipon',
  'How to use Nasi Paipon',
  'How do i cancel a orders product',
  'Is Nasi Paipon free to use?',
  'How to add promo on Nasi Paipon',
];
List<String> expandedValue = [
  'Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document ',
  'Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document ',
  'Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document ',
  'Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document ',
  'Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document ',
];

List<Item> generateItems(int count) {
  return List<Item>.generate(count, (int index) {
    return Item(
      headerValue: header[index],
      expandedValue: expandedValue[index],
    );
  });
}
