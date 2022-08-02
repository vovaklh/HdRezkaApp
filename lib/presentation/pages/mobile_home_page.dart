import 'package:flutter/material.dart';
import 'package:hdrezka_app/core/utils/extensions/build_context_ext.dart';
import 'package:hdrezka_app/presentation/pages/categories_page.dart';
import 'package:hdrezka_app/presentation/pages/content_page.dart';
import 'package:hdrezka_app/presentation/pages/favorite_page.dart';
import 'package:hdrezka_app/presentation/pages/history_page.dart';
import 'package:hdrezka_app/presentation/pages/search_page.dart';
import 'package:hdrezka_app/presentation/pages/settings_page.dart';

class MobileHomePage extends StatefulWidget {
  const MobileHomePage({Key? key}) : super(key: key);

  @override
  State<MobileHomePage> createState() => _MobileHomePageState();
}

class _MobileHomePageState extends State<MobileHomePage> {
  final _pages = const [
    ContentPage(),
    SearchPage(),
    CategoriesPage(),
    HistoryPage(),
    FavoritePage(),
    SettingsPage(),
  ];
  late final PageController _pageController;

  int _currentIndex = 0;

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
      _pageController.jumpToPage(_currentIndex);
    });
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: _pageController,
          children: _pages,
        ),
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: context.color.bottomNavigationBarBackgroundColor,
        ),
        child: BottomNavigationBar(
          onTap: _onTabTapped,
          currentIndex: _currentIndex,
          selectedItemColor: context.color.bottomNavigationBarSelectedItemColor,
          unselectedItemColor:
              context.color.bottomNavigationBarUnselectedItemColor,
          items: [
            BottomNavigationBarItem(
              icon: const Icon(Icons.movie),
              label: context.localizations.novelties,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.search),
              label: context.localizations.search,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.sort),
              label: context.localizations.categories,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.history_toggle_off_outlined),
              label: context.localizations.history,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.favorite),
              label: context.localizations.favorites,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.settings),
              label: context.localizations.settings,
            ),
          ],
        ),
      ),
    );
  }
}
