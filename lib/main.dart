import 'file:///C:/Users/user/AndroidStudioProjects/barcode_scanner_app/lib/views/auth_views/login.dart';
import 'package:barcode_scanner_app/views/auth_views/auth_controller.dart';
import 'package:flutter/material.dart';

import 'config/size_config.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return MaterialApp(
              title: 'Flutter Demo',
              theme: ThemeData(
                primarySwatch: Colors.blue,
              ),
              home: AuthController(),
            );
          },
        );
      },
    );
  }
}