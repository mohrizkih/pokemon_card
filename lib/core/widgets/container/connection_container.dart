import 'package:flutter/material.dart';
import 'package:pokemon_card/core/extensions/widget_extension.dart';
import 'package:pokemon_card/core/widgets/container/connection_viewmodel.dart';
import 'package:pokemon_card/core/widgets/text/text.dart';
import 'package:provider/provider.dart';

class ConnectionContainer extends StatefulWidget {
  final Widget child;
  const ConnectionContainer({super.key, required this.child});

  @override
  State<ConnectionContainer> createState() => _ConnectionContainerState();
}

class _ConnectionContainerState extends State<ConnectionContainer> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ConnectionViewmodel>(builder: (context, viewModel, child) {
      print(viewModel.isConnected);
      return Stack(children: [
        widget.child,
        if (!viewModel.isConnected) _noInternet(viewModel),
      ]);
    });
  }

  Widget _noInternet(ConnectionViewmodel viewModel) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Expanded(
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // SvgPicture.asset(getImagePath('ic_no_connection.svg')).bottomPadded(10),
                  T.poppinsBold('Ada Kesalahan Koneksi', size: 18, color: Colors.black).bottomPadded(16),
                  T.poppinsRegular('Silakan periksa internet Anda dan coba lagi', color: Colors.grey),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () => viewModel.checkConnection(),
            child: Container(
              padding: const EdgeInsets.all(14),
              margin: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Colors.blue,
              ),
              child: Center(child: T.poppinsSemiBold('Muat Ulang', color: Colors.white)),
            ),
          ),
        ],
      ),
    );
  }
}
