import 'package:flutter/material.dart';
import 'sign_up_page.dart';
import 'search_page.dart';
import 'profile_page.dart';
import 'matches_page.dart';
import 'other_person_profile_page.dart';
import 'package:flutter/cupertino.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: defTheme(),
      routes: {
        '/': (context) => const SignUpPage(),
        '/searchPage': (context) => const SearchPage(),
        '/profilePage': (context) => const ProfilePage(),
        '/matchesPage': (context) => const MatchesPage(),
        '/otherPersonProfilePage': (context) => const OtherPersonProfilePage(),
      },
    );
  }
}

//Here is Color used in the app
const darkGrey = Color(0xFF666F80);
const lightGrey = Color(0xFFEEEEEE);
const appWhite = Color(0xFFFFFFFF);
const appRed = Color(0xFFFB6D6C);
Color activeColor = appRed, inactiveColor = darkGrey;
Color heartIconColor = darkGrey,
    searchIconColor = darkGrey,
    profileIconColor = darkGrey;
double heartIconSize = 30, searchIconSize = 30, profileIconSize = 30, g = 0;

//App Theme
ThemeData defTheme() {
  return ThemeData(
    scaffoldBackgroundColor: lightGrey,
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      iconTheme: IconThemeData(color: appRed, size: 30),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      toolbarHeight: 70,
      shadowColor: lightGrey,
      backgroundColor: appWhite,
      titleTextStyle: TextStyle(
        color: appRed,
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

//Bottom Navigation Bar
class BottomBarForDating extends StatelessWidget {
  const BottomBarForDating({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: appWhite,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            color: heartIconColor,
            onPressed: () {
              Navigator.pushNamed(context, '/matchesPage');
            },
            icon: Icon(
              CupertinoIcons.heart_fill,
              size: heartIconSize,
            ),
          ),
          IconButton(
            color: searchIconColor,
            onPressed: () {
              Navigator.pushNamed(context, '/searchPage');
            },
            icon: Icon(
              CupertinoIcons.search,
              size: searchIconSize,
            ),
          ),
          IconButton(
            color: profileIconColor,
            onPressed: () {
              Navigator.pushNamed(context, '/profilePage');
            },
            icon: Icon(
              CupertinoIcons.profile_circled,
              size: profileIconSize,
            ),
          ),
        ],
      ),
    );
  }
}
