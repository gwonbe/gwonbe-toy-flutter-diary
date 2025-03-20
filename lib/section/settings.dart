import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight), // AppBar의 높이를 설정
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Theme.of(context).primaryColor,
                width: 2.0,
              ),
            ),
          ),
          child: AppBar(
            title: Center(
              child: Text(
                "Settings",
                style: TextStyle(fontSize: 20),
              ),
            ),
            actions: [
              IconButton(
                icon: Icon(Icons.favorite),
                onPressed: () {},
              ),
            ],
            backgroundColor: Colors.white, // AppBar 배경색
            elevation: 0, // 그림자 없애기
            centerTitle: true, // 기본적으로 타이틀을 가운데 배치하려면 true 설정
          ),
        ),
      ),
      body: Center(child: Text("Settings")),
    );
  }
}
