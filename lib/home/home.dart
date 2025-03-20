import 'package:diary/home/section_button.dart';
import 'package:diary/tab_navigation.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).canvasColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
            ),

            Text(
              "Diary",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),

            // 이미지
            // SizedBox(
            //   width: 50,
            //   height: 50,
            //   child: Image.asset('assets/diary_icon.png'),
            // ),

            // 화면을 채우기 위해 Expanded 사용
            Expanded(
              child: Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                  child: Column(
                    mainAxisSize: MainAxisSize.min, // 최소 높이만 차지
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SectionButton(
                        text: "Daily",
                        iconData: Icons.edit,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  TabNavigation(initialTabIndex: 0),
                            ),
                          );
                        },
                      ),
                      SectionButton(
                        text: "Weekly",
                        iconData: Icons.edit,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  TabNavigation(initialTabIndex: 1),
                            ),
                          );
                        },
                      ),
                      SectionButton(
                        text: "Monthly",
                        iconData: Icons.edit,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  TabNavigation(initialTabIndex: 2),
                            ),
                          );
                        },
                      ),
                      SectionButton(
                        text: "Yearly",
                        iconData: Icons.edit,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  TabNavigation(initialTabIndex: 3),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // Exit 버튼
            // Padding(
            //   padding: EdgeInsets.symmetric(horizontal: 10),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.end,
            //     children: [
            //       ElevatedButton(
            //         onPressed: () {
            //           SystemNavigator.pop();
            //         },
            //         style: OutlinedButton.styleFrom(
            //           backgroundColor: Theme.of(context).focusColor,
            //         ),
            //         child: Text(
            //           "Exit",
            //           style: TextStyle(fontSize: 12, color: Colors.white),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
          ],
        ));
  }

  // method
}
