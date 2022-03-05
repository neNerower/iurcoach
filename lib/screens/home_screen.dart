import 'package:flutter/material.dart';
import 'package:iurc_mobile_app/pages/account_page.dart';
import 'package:iurc_mobile_app/pages/calendar_page.dart';
import 'package:iurc_mobile_app/pages/news_page.dart';
import 'package:iurc_mobile_app/pages/training_page.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _currentPageIndex;
  late List<String> _pageTitles;
  late List<Widget> _pages;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();

    _pageTitles = ["Календарь", "Тренировки", "Новости", "Мой аккаунт"];
    _pages = [CalendarPage(), TrainingPage(), NewsPage(), AccountPage()];

    _currentPageIndex = 2;
    _pageController = PageController(initialPage: _currentPageIndex);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pageTitles[_currentPageIndex]),
      ),
      body: PageView(
        controller: _pageController,
        physics: NeverScrollableScrollPhysics(),
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentPageIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.today),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.rowing),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fiber_new),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: '',
          ),
        ],
        onTap: (selectedPageIndex) {
          setState(() {
            _currentPageIndex = selectedPageIndex;
            _pageController.jumpToPage(selectedPageIndex);
          });
        },
      ),
    );
  }
}
