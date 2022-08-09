import 'package:flutter/material.dart';
import 'package:hdrezka_app/core/utils/extensions/build_context_ext.dart';
import 'package:hdrezka_app/presentation/pages/categories_page.dart';
import 'package:hdrezka_app/presentation/pages/content_page.dart';
import 'package:hdrezka_app/presentation/pages/favorite_page.dart';
import 'package:hdrezka_app/presentation/pages/history_page.dart';
import 'package:hdrezka_app/presentation/pages/search_page.dart';
import 'package:hdrezka_app/presentation/pages/settings_page.dart';

class TvHomePage extends StatefulWidget {
  const TvHomePage({Key? key}) : super(key: key);

  @override
  State<TvHomePage> createState() => _TvHomePageState();
}

class _TvHomePageState extends State<TvHomePage> {
  final _pages = const [
    ContentPage(),
    SearchPage(),
    CategoriesPage(),
    HistoryPage(),
    FavoritePage(),
    SettingsPage(),
  ];
  final FocusNode _focusNode = FocusNode();
  late final PageController _pageController;

  int _currentIndex = 0;
  bool _extended = false;

  void _onDestinationSelected(int index) {
    setState(() {
      _currentIndex = index;
      _pageController.jumpToPage(_currentIndex);
    });
  }

  void _onFocusChange(bool hasFocus) {
    setState(() {
      _extended = hasFocus;
    });
    if (hasFocus) {
      final nodes = _focusNode.traversalChildren;
      nodes.elementAt(_currentIndex).requestFocus();
    }
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Focus(
            focusNode: _focusNode,
            onFocusChange: _onFocusChange,
            skipTraversal: true,
            child: NavigationRail(
              backgroundColor: context.color.navigationRailBackgroundColor,
              extended: _extended,
              minExtendedWidth: 150,
              selectedIconTheme: IconThemeData(
                color: context.color.navigationRailSelectedIconColor,
              ),
              selectedLabelTextStyle: context.text.navigationRailSelectedStyle,
              unselectedIconTheme: IconThemeData(
                color: context.color.navigationRailUnselectedIconColor,
              ),
              unselectedLabelTextStyle:
                  context.text.navigationRailUnselectedStyle,
              destinations: [
                NavigationRailDestination(
                  icon: const Icon(Icons.movie),
                  label: Text(context.localizations.novelties),
                ),
                NavigationRailDestination(
                  icon: const Icon(Icons.search),
                  label: Text(context.localizations.search),
                ),
                NavigationRailDestination(
                  icon: const Icon(Icons.sort),
                  label: Text(context.localizations.categories),
                ),
                NavigationRailDestination(
                  icon: const Icon(Icons.history_toggle_off_outlined),
                  label: Text(context.localizations.history),
                ),
                NavigationRailDestination(
                  icon: const Icon(Icons.favorite),
                  label: Text(context.localizations.favorites),
                ),
                NavigationRailDestination(
                  icon: const Icon(Icons.settings),
                  label: Text(context.localizations.settings),
                ),
              ],
              selectedIndex: _currentIndex,
              groupAlignment: 0,
              onDestinationSelected: _onDestinationSelected,
            ),
          ),
          Expanded(
            child: PageView(
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              controller: _pageController,
              children: _pages,
            ),
          ),
        ],
      ),
    );
  }
}
