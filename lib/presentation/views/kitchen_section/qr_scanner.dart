import 'package:nasi_paipon/app/index.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

import '../../common/app_button.dart';

class QrScannerView extends StatefulWidget {
  const QrScannerView({super.key});

  @override
  State<QrScannerView> createState() => _QrScannerViewState();
}

class _QrScannerViewState extends State<QrScannerView> {
  late Size size;
  final GlobalKey _qrKey = GlobalKey(debugLabel: "QR");
  QRViewController? _controller;
  bool isFlashOff = true;
  Barcode? result;
  bool isBuild = false;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    if (!isBuild && _controller != null) {
      _controller?.pauseCamera();
      _controller?.resumeCamera();
      setState(() {
        isBuild = true;
      });
    }

    return SizedBox(
      height: size.height,
      width: size.width,
      child: Column(
        children: [
          Expanded(flex: 9, child: _buildQrView(context)),
        ],
      ),
    );
  }

  Widget _buildQrView(BuildContext context) {
    var scanArea = 250.0;
    return QRView(
      key: _qrKey,
      onQRViewCreated: _onQRviewCreated,
      onPermissionSet: (ctrl, p) => onPermissionSet(context, ctrl, p),
      overlay: QrScannerOverlayShape(
        cutOutSize: scanArea,
        borderWidth: 10,
        borderColor: ColorManager.primary,
        borderLength: 20,
        borderRadius: 4,
      ),
    );
  }

  Widget _showResult() {
    return Center(
        child: FutureBuilder<dynamic>(
      future: showDialog(
          context: context,
          builder: (BuildContext context) {
            return WillPopScope(
              child: AlertDialog(
                title: const Text(
                  'Scan Result',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                content: SizedBox(
                  height: 140,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Utils.popinSemBoldText(
                        result!.code.toString(),
                      ),
                      AppButton(
                        bgColor: ColorManager.primary,
                        radius: 10.r,
                        onPress: () {
                          Navigator.pop(context);
                          _controller?.resumeCamera();
                        },
                        child: Utils.popinMedText(
                          'Close',
                        ),
                      )
                    ],
                  ),
                ),
              ),
              onWillPop: () async => false,
            );
          }),
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        throw UnimplementedError;
      },
    ));
  }

  void _onQRviewCreated(QRViewController qrController) {
    setState(() {
      _controller = qrController;
    });
    _controller?.scannedDataStream.listen((event) {
      setState(() {
        result = event;
        _controller?.pauseCamera();
      });
      if (result?.code != null) {
        print('Scanned & showing result');
        _showResult();
      }
    });
  }

  void onPermissionSet(
      BuildContext context, QRViewController ctrl, bool permisson) {
    if (!permisson) {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text('No Permision')));
    }
  }
}
