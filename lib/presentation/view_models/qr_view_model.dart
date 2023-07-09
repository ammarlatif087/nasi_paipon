import 'package:flutter/widgets.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QRGeneratorViewModel extends ChangeNotifier {
  String _data = 'Order details';

  String get data => _data;

  void updateData(String newData) {
    _data = newData;
    notifyListeners();
  }

  Widget generateQRCode() {
    if (_data.isNotEmpty) {
      return QrImageView(data: _data, version: QrVersions.auto, size: 200.0);
    } else {
      return Container();
    }
  }
}
