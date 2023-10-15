import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:selaraku/explore.dart';
import 'package:selaraku/favorite.dart';
import 'package:selaraku/home.dart';
import 'package:selaraku/profile.dart';

class Navigasi extends StatelessWidget {
  const Navigasi({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Run(),
    );
  }
}

class Run extends StatefulWidget {
  const Run({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _RunState createState() => _RunState();
}

int _currentIndex = 0;

class _RunState extends State<Run> {
  void changePage(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final pages = [
    const Homemenu(),
    const Explorer(),
    const Favorite(),
    const Profile()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: pages[_currentIndex],
      bottomNavigationBar: DotNavigationBar(
        backgroundColor: const Color.fromRGBO(219, 73, 51, 1.000),
        currentIndex: _currentIndex,
        onTap: changePage,
        dotIndicatorColor: Colors.white,
        items: [
          /// Home
          DotNavigationBarItem(
              icon: const Icon(Icons.home),
              selectedColor: Colors.white,
              unselectedColor: const Color.fromRGBO(186, 186, 186, 1.000)),

          /// Likes
          DotNavigationBarItem(
              icon: const Icon(Icons.explore),
              selectedColor: Colors.white,
              unselectedColor: const Color.fromRGBO(186, 186, 186, 1.000)),

          /// Search
          DotNavigationBarItem(
              icon: const Icon(Icons.favorite),
              selectedColor: Colors.white,
              unselectedColor: const Color.fromRGBO(186, 186, 186, 1.000)),

          /// Profile
          DotNavigationBarItem(
              icon: const Icon(Icons.person),
              selectedColor: Colors.white,
              unselectedColor: const Color.fromRGBO(186, 186, 186, 1.000))
        ],
      ),
    );
  }
}
