import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class ConnectionViewmodel extends ChangeNotifier {
  late StreamSubscription<ConnectivityResult> subscription;
  bool _isConnected = true;

  ConnectionViewmodel() {
    subscription = Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
      final connect = result == ConnectivityResult.mobile || result == ConnectivityResult.wifi;

      _connectSubject.sink.add(connect);
      notifyListeners();
    });

    _connectSubject.listen(onChangeConnection);
  }

  final _connectSubject = BehaviorSubject<bool>();

  void onChangeConnection(bool connect) {
    _isConnected = connect;
  }

  bool get isConnected => _isConnected;

  Future checkConnection() async {
    await Connectivity().checkConnectivity().then((result) {
      if (result == ConnectivityResult.mobile || result == ConnectivityResult.wifi) {
        _connectSubject.sink.add(true);
      } else {
        _connectSubject.sink.add(false);
      }
    });
  }

  @override
  void dispose() {
    subscription.cancel();
    _connectSubject.close();
    super.dispose();
  }
}
