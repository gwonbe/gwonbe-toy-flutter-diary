import 'package:diary/section/screen_daily.dart';
import 'package:diary/section/screen_monthly.dart';
import 'package:diary/section/screen_weekly.dart';
import 'package:diary/section/screen_yearly.dart';
import 'package:flutter/material.dart';

class TabNavigation extends StatefulWidget {
  final int initialTabIndex;

  const TabNavigation({super.key, this.initialTabIndex = 0});

  @override
  TabNavigationState createState() => TabNavigationState();
}

class TabNavigationState extends State<TabNavigation> {
  late PageController _pageController;
  int _currentIndex = 0;

  // 탭에 따른 AppBar 텍스트 리스트
  final List<String> _tabTitles = [
    "Daily",
    "Weekly",
    "Monthly",
    "Yearly",
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: widget.initialTabIndex);
    _currentIndex = widget.initialTabIndex;
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
    _pageController.jumpToPage(index);
  }

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
            automaticallyImplyLeading: false, // 기본 뒤로가기 버튼 제거
            title: Center(
              child: Text(
                _tabTitles[_currentIndex], // 현재 탭에 맞는 텍스트 설정
                style: TextStyle(fontSize: 20),
              ),
            ),
            actions: [
              IconButton(
                icon: Icon(Icons.settings),
                onPressed: () {
                  Navigator.of(context).pushNamed('settings');
                },
              ),
            ],
            backgroundColor: Colors.white, // AppBar 배경색
            elevation: 0, // 그림자 없애기
          ),
        ),
      ),
      // 섹션별 내용
      body: PageView(
        controller: _pageController,
        onPageChanged: (int index) {
          setState(() {
            _currentIndex = index; // 페이지 변경 시 인덱스 업데이트
          });
        },
        children: [
          Center(child: ScreenDaily()),
          Center(child: ScreenWeekly()),
          Center(child: ScreenMonthly()),
          Center(child: ScreenYearly()),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Theme.of(context).hintColor,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Daily",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Weekly",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Monthly",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Yearly",
          ),
        ],
      ),
    );
  }
}
