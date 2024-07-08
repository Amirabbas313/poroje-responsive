import 'package:flutter/material.dart';

import 'res.dart/mobail_s.dart';
import 'res.dart/res.dart';
import 'res.dart/tablrt_s.dart';
import 'res.dart/windows_s.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // return Scaffold();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Res(
        mobaile: MobaileScafold(),
        tablet: TabletScafold(),
        windows: WindowsScafold(),
      ),
    );
  }
}
