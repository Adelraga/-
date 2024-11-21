// custom_bottom_nav_bar.dart
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class CustomBottomNavBar extends StatefulWidget {
  @override
  _CustomBottomNavBarState createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    // Navigate based on selected index
    switch (index) {
      // case 0:
      //   context.go('/quran');
      //   break;
      case 1:
        context.go('/lamp');
        break;
      case 2:
        context.go('/pray');
        break;
      case 3:
        context.go('/doa');
        break;
      case 4:
        context.go('/bookmark');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      // backgroundColor: const Color(0xFF2A2D3E), // Dark background color
      // selectedItemColor: const Color(0xFF8257E5), // Purple color for selected icon
      // unselectedItemColor: Colors.grey, // Gray color for unselected icons
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/svgs/quran-icon.svg',
            color: _selectedIndex == 0 ? const Color(0xFF8257E5) : Colors.grey,
          ),
          label: 'Quran',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/svgs/lamp-icon.svg',
            color: _selectedIndex == 1 ? const Color(0xFF8257E5) : Colors.grey,
          ),
          label: 'Lamp',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/svgs/pray-icon.svg',
            color: _selectedIndex == 2 ? const Color(0xFF8257E5) : Colors.grey,
          ),
          label: 'Pray',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/svgs/doa-icon.svg',
            color: _selectedIndex == 3 ? const Color(0xFF8257E5) : Colors.grey,
          ),
          label: 'Doa',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/svgs/bookmark-icon.svg',
            color: _selectedIndex == 4 ? const Color(0xFF8257E5) : Colors.grey,
          ),
          label: 'Bookmark',
        ),
      ],
    );
  }
}
