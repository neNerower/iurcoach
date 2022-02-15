import 'package:flutter/material.dart';
import 'package:iurc_mobile_app/screens/news_page.dart';

import 'calendar_page.dart';
import 'my_page.dart';
import 'training_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _currentPageIngex;
  late String _title;
  late List<String> _pageTitles;
  late List<Widget> _pages;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();

    _pageTitles = ["Календарь", "Тренировки", "Новости", "Моя страница"];

    _pages = [CalendarPage(), TrainingPage(), NewsPage(), MyPage()];

    _currentPageIngex = 2;
    _title = _pageTitles[_currentPageIngex];
    _pageController = PageController(initialPage: _currentPageIngex);
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
        title: Text(_pageTitles[_currentPageIngex]),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: UserAccountsDrawerHeader(
                accountName: Text("Name Account"),
                accountEmail: Text("email@mail.com"),
                currentAccountPicture: CircleAvatar(
                  // TODO: load image from request not from asset
                  foregroundImage: AssetImage(
                    'assets/images/tmp/avatar.jpg',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: PageView(
        controller: _pageController,
        physics: NeverScrollableScrollPhysics(),
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
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
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.blue,
        currentIndex: _currentPageIngex,
        onTap: (selectedPageIndex) {
          setState(() {
            _currentPageIngex = selectedPageIndex;
            _pageController.jumpToPage(selectedPageIndex);
          });
        },
      ),
    );
  }
}
