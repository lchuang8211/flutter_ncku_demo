import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_ncku_test/res/colors.dart';
import 'package:flutter_ncku_test/res/dimens.dart';
import 'package:intl/intl.dart';

class MyClockView extends StatefulWidget {
  const MyClockView({Key? key}) : super(key: key);

  @override
  State<MyClockView> createState() => _MyClockViewState();
}

class _MyClockViewState extends State<MyClockView> {
  var timeString = '';
  Timer? timer;

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (mounted) {
        timeString = DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());
        setState(() {});
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      timeString,
      style: const TextStyle(fontSize: Dimens.dp30, color: ColorSet.red),
    );
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }
}
