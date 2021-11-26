import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'pages/home.dart';
import 'pages/home2.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.transparent, // navigation bar color
      statusBarIconBrightness: Brightness.dark, // status bar icons' color
      systemNavigationBarIconBrightness: Brightness.dark,
    ),
  );

  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    ),
  );
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _ExpensesPageState createState() => _ExpensesPageState();
}

class _ExpensesPageState extends State<MainPage> {
  var indexPage = 0;
  var listPage = [HomePage(), HomePage2()];
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final getHeight = mediaQuery.size.height;
    final getWidht = mediaQuery.size.width;
    final appbarHeight = mediaQuery.padding.top;
    final bottomPadding = mediaQuery.padding.bottom;
    return Scaffold(
      backgroundColor: const Color(0xffF0F8FF),
      body: listPage[indexPage],
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30), topLeft: Radius.circular(30)),
          boxShadow: [
            BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: BottomNavigationBar(
            showSelectedLabels: false, // <-- HERE
            showUnselectedLabels: false,
            currentIndex: indexPage,
            onTap: (int index) {
              setState(() {
                if (index == 1 || index == 0) {
                  indexPage = index;
                }
              });
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home, color: Colors.black),
                label: 'Personal',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.wallet_giftcard_sharp, color: Colors.black),
                label: 'Notifications',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.message, color: Colors.black),
                label: 'Personal',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person, color: Colors.black),
                label: 'Notifications',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
