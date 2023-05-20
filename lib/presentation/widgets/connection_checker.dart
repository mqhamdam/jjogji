import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class ConnectionCheck extends StatelessWidget {
  const ConnectionCheck({required this.child, super.key});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<ConnectivityResult>(
      stream: Connectivity().onConnectivityChanged,
      builder: (context, connectivity) {
        if (connectivity.hasData == false) {
          return const MaterialApp(home: Text("No data"));
        } else if (connectivity.data == ConnectivityResult.none) {
          return const MaterialApp(
            home: Scaffold(
              body: Center(
                child: Text(
                  'No internet Connection',
                ),
              ),
            ),
          );
        } else {
          return FutureBuilder(
            future: InternetConnectionChecker().isHostReachable(
              AddressCheckOptions(
                address: InternetAddress(
                  '1.1.1.1',
                  type: InternetAddressType.IPv4,
                ),
              ),
            ),
            builder: (context, snapshot) {
              if (snapshot.data == null || snapshot.data!.isSuccess == false) {
                FlutterNativeSplash.remove();

                return const MaterialApp(
                  home: Scaffold(
                    body: Center(
                      child: Text(
                        'No internet Connection',
                      ),
                    ),
                  ),
                );
              } else {
                return child;
              }
            },
          );
        }
      },
    );
  }
}
