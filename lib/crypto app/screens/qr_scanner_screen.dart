// ignore_for_file: use_build_context_synchronously

import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

import '../../Chess/Components/size_model.dart';

/// Implementation of Mobile Scanner example with simple configuration
class MobileScannerSimple extends StatefulWidget {
  /// Constructor for simple Mobile Scanner example
  const MobileScannerSimple({super.key});

  @override
  State<MobileScannerSimple> createState() => _MobileScannerSimpleState();
}

class _MobileScannerSimpleState extends State<MobileScannerSimple> {
  Barcode? barcode;
  bool isScanComplete = false;

  Widget _buildBarcode(Barcode? value) {
    if (value == null) {
      return const Text(
        'Scan wallet adress QR',
        overflow: TextOverflow.fade,
        style: TextStyle(color: Colors.white,
          inherit: false,
          fontSize: 20,),
      );
    }

    return Text(
      value.displayValue ?? 'No display value.',
      overflow: TextOverflow.fade,
      style: const TextStyle(color: Colors.white),
    );
  }

  void _handleBarcode(BarcodeCapture barcodes) {
    if (mounted) {
      setState(
        () {
          barcode = barcodes.barcodes.firstOrNull;
          if (isScanComplete == false && barcode != null) {
            Clipboard.setData(
              ClipboardData(text: '${barcode!.displayValue}'),
            ).then(
              (_) async {
                 await Flushbar(
                  message: 'Wallet adress copied to clipboard',
                  duration: const Duration(seconds: 2),
                  animationDuration: const Duration(milliseconds: 400),
                ).show(context);
                isScanComplete = true;
                Navigator.pop(context);
              },
            );
          }
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          MobileScanner(
            onDetect: _handleBarcode,
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.only(right: getWidth(context, 12), top: getHeight(context, 40),),
              child: IconButton(
                iconSize: 32,
                color: Colors.white,
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.cancel),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              alignment: Alignment.bottomCenter,
              height: getHeight(context, 120),
              color: const Color.fromRGBO(0, 0, 0, 0.4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Center(
                      child: _buildBarcode(barcode),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
