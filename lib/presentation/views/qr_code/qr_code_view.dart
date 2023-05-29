import 'package:nasi_paipon/app/index.dart';

import '../../view_models/qr_view_model.dart';

class QrCodeView extends StatelessWidget {
  const QrCodeView({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<QRGeneratorViewModel>(context);
    return Scaffold(
      appBar: AppBar(
          backgroundColor: ColorManager.primary,
          title: const Text(
            'QR Code',
          )),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(child: viewModel.generateQRCode()),
        ],
      ),
    );
  }
}
