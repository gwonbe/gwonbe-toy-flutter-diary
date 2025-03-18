import 'package:diary/provider/date_time_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ScreenDaily extends StatefulWidget {
  const ScreenDaily({super.key});

  @override
  State<ScreenDaily> createState() => _ScreenDaily();
}

class _ScreenDaily extends State<ScreenDaily> {
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
