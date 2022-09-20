import 'package:flutter/material.dart';
import 'package:responsive_app/desktop_scaffold.dart';
import 'package:responsive_app/mobile_scaffold.dart';
import 'package:responsive_app/responsive_layout_mgr.dart';
import 'package:responsive_app/tablet_scaffold.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveLayout(
        tabletScaffold: TabletScaffold(),
        mobileScaffold: MobileScaffold(),
        desktopScaffold: DesktopScaffold(),
      ),
    );
  }
}
