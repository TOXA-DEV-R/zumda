import 'package:flutter/material.dart';
import 'package:zumda/features/current/presentation/pages/current_page.dart';
import 'package:zumda/features/history/presentation/pages/history_page.dart';
import 'package:zumda/features/order/presentation/pages/order_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Widget> _pages = [
    const OrderPage(),
    const CurrentPage(),
    const HistoryPage(),
  ];

  final PageController _pageController = PageController(initialPage: 0);
  int _selectedIndex = 0;

  void _onPageChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      print(_selectedIndex);
      _pageController.animateToPage(
        index,
        duration: const Duration(milliseconds: 400),
        curve: Curves.ease,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    MediaQuery.of(context).size.width;
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: _onPageChanged,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            label: '',
            icon: Stack(
              children: [
                Positioned(
                  child: Container(
                    height: 32.0,
                    decoration: BoxDecoration(
                      color: _selectedIndex == 0
                          ? const Color.fromRGBO(255, 180, 169, 1)
                          : Colors.transparent,
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 3.0),
                    child: const Icon(
                      Icons.restaurant_menu_outlined,
                      size: 24,
                      color: Color.fromRGBO(65, 0, 0, 1),
                    ),
                  ),
                ),
                Positioned(
                    top: 4.0,
                    right: 5.0,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 4, vertical: 2),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(9)),
                        color: Color(0xFFB3261E),
                      ),
                      child: const Text(
                        '32',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    )),
              ],
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Stack(
              children: [
                Positioned(
                  child: Container(
                    height: 32.0,
                    decoration: BoxDecoration(
                      color: _selectedIndex == 1
                          ? const Color.fromRGBO(255, 180, 169, 1)
                          : Colors.transparent,
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 3.0),
                    child: const Icon(
                      Icons.shopping_bag_outlined,
                      size: 24,
                      color: Color.fromRGBO(65, 0, 0, 1),
                    ),
                  ),
                ),
                Positioned(
                    top: 4.0,
                    right: 5.0,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 4, vertical: 2),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(9)),
                        color: Color(0xFFB3261E),
                      ),
                      child: const Text(
                        '4',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    )),
              ],
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Stack(
              children: [
                Positioned(
                  child: Container(
                    height: 32.0,
                    decoration: BoxDecoration(
                      color: _selectedIndex == 2
                          ? const Color.fromRGBO(255, 180, 169, 1)
                          : Colors.transparent,
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 3.0),
                    child: const Icon(
                      Icons.history_outlined,
                      size: 24,
                      color: Color.fromRGBO(65, 0, 0, 1),
                    ),
                  ),
                ),
                Positioned(
                    top: 4.0,
                    right: 5.0,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 4, vertical: 2),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(9)),
                        color: Color(0xFFB3261E),
                      ),
                      child: const Text(
                        '1',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
