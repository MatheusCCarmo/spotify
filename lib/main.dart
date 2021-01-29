import 'package:flutter/material.dart';
import 'package:spotify/screens/home_screen.dart';
import 'package:spotify/screens/library_screen.dart';
import 'package:spotify/screens/search_screen.dart';
import 'package:spotify/util/CustomColors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spotify',
      theme: ThemeData(
          backgroundColor: CustomColors().grey,
          primaryColor: CustomColors().black,
          accentColor: CustomColors().green,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: TextTheme(
            headline6: TextStyle(color: CustomColors().lightGrey),
            headline5: TextStyle(color: CustomColors().white),
            subtitle1: TextStyle(color: CustomColors().grey),
          ),
          iconTheme: IconThemeData(color: CustomColors().lightGrey),
          appBarTheme: AppBarTheme(color: CustomColors().black)),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    SearchScreen(),
    LibraryScreen(),
  ];

  static List<String> _titleOptions = <String>[
    'Home',
    'Search',
    'Your Library'
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: CustomColors().black,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedFontSize: 13,
          unselectedFontSize: 12,
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.white,
          unselectedItemColor: Colors.white54,
          backgroundColor: CustomColors().darkGrey,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home), title: Text("Home")),
            BottomNavigationBarItem(
                icon: Icon(Icons.search), title: Text("Search")),
            BottomNavigationBarItem(
                icon: Icon(Icons.library_music), title: Text("Your Library")),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
