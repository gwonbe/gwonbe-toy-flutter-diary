import 'package:diary/provider/date_time_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ScreenWeekly extends StatefulWidget {
  const ScreenWeekly({super.key});

  @override
  State<ScreenWeekly> createState() => _ScreenWeekly();
}

class _ScreenWeekly extends State<ScreenWeekly> {
  @override
  Widget build(BuildContext context) {
    final datetimeProvider = Provider.of<DateTimeProvider>(context);

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(datetimeProvider.now.toString()),
          ],
        ),
      ),
    );
  }
}
