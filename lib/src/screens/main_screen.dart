import 'package:flutter/material.dart';

//pages
import '../pages/home_page.dart';
import '../pages/order_page.dart';
import '../pages/favourite_page.dart';
import '../pages/profile_page.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentTabIndex = 0;

  List<Widget> pages;
  Widget currentPage;

  HomePage homePage;
  OrderPage orderPage;
  FavouritePage favouritePage;
  ProfilePage profilePage;

  @override
  void initState() {
    // ignore: todo
    //TODO: implement initState
    super.initState();
    homePage = HomePage();
    orderPage = OrderPage();
    favouritePage = FavouritePage();
    orderPage = OrderPage();
    pages = [homePage, orderPage, favouritePage, profilePage];

    currentPage = homePage;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          setState(() {
            currentTabIndex = index;
            currentPage = pages[index];
          });
        },
        currentIndex: currentTabIndex,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              // ignore: deprecated_member_use
              title: Text("Home")),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            //ignore: deprecated_member_use
            title: Text("Orders"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            //ignore: deprecated_member_use
            title: Text("Favourite"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            //ignore: deprecated_member_use
            title: Text("profile"),
          ),
        ],
      ),
      body: currentPage,
    );
  }
}
