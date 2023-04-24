import 'package:flutter/material.dart';
import 'package:docsack/views/screens/input_screen.dart';
import 'package:sizer/sizer.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (BuildContext, Orientation, DeviceType) => MaterialApp(
        home: InputScreen(),
      ),
    );
  }
}
