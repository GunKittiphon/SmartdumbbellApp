import 'package:flutter/material.dart';
import '../bluetooth_screen/bluetooth_screen.dart';
import '../menu_screen/menu_screen.dart';
import '../menu_screen/add_gesture_screen.dart';
import '../constants.dart';

class Home extends StatefulWidget {
  final String title;

  const Home({Key? key, required this.title}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  // static const TextStyle optionStyle =
  //     TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    const MenuScreen(),
    const BluetoothScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _widgetOptions[1] = const MenuScreen();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(widget.title),
        actions: _selectedIndex == 1
            ? <Widget>[
                IconButton(
                  icon: const Icon(Icons.add_alert),
                  tooltip: 'Add Gesture',
                  onPressed: () {
                    setState(() {
                      _widgetOptions[1] = const AddGestureScreen();
                    });
                  },
                )
              ]
            : <Widget>[],
      ),
      body: Container(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Menu',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bluetooth),
            label: 'Bluetooth',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: ButtonGetStar,
        onTap: _onItemTapped,
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Row(children: [Text('5555'), Text('4444')]),
        Text('5555'),
        Text('5555')
      ],
    ));
  }
}
