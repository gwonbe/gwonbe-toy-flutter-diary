import 'package:diary/home/section_button.dart';
import 'package:diary/tab_navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Column(
        children: [
          Flexible(
            flex: 1,
            child: Column(
              children: [
                Text(
                  "ChromaTerm",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),

                // 주요 섹션 바로가기 버튼
                Padding(
                  // 버튼들을 감싸는 패딩
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SectionButton(
                            text: "Section0",
                            iconData: Icons.home,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        TabNavigation(initialTabIndex: 0)),
                              );
                            },
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SectionButton(
                            text: "Section1",
                            iconData: Icons.home,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        TabNavigation(initialTabIndex: 1)),
                              );
                            },
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SectionButton(
                            text: "Section2",
                            iconData: Icons.home,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        TabNavigation(initialTabIndex: 2)),
                              );
                            },
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SectionButton(
                            text: "Section3",
                            iconData: Icons.home,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        TabNavigation(initialTabIndex: 3)),
                              );
                            },
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SectionButton(
                            text: "Section4",
                            iconData: Icons.home,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        TabNavigation(initialTabIndex: 4)),
                              );
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                // Exit 버튼
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          SystemNavigator.pop();
                        },
                        style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.grey,
                        ),
                        child: Text(
                          "Exit",
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // method
}
