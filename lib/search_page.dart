import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'main.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.home),
        title: const Text('Search your match'),
      ),
      body: Column(
        children: [
          const Expanded(
            child: Center(
              child: Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: SearchBar(
                  padding: MaterialStatePropertyAll<EdgeInsets>(
                      EdgeInsets.only(left: 20)),
                  leading: Icon(
                    CupertinoIcons.search,
                    color: darkGrey,
                  ),
                  backgroundColor: MaterialStatePropertyAll<Color>(appWhite),
                  hintText: 'Search your match here....',
                  hintStyle: MaterialStatePropertyAll<TextStyle>(
                      TextStyle(color: Colors.grey)),
                  overlayColor: MaterialStatePropertyAll<Color>(lightGrey),
                  surfaceTintColor: MaterialStatePropertyAll<Color>(appWhite),
                ),
              ),
            ),
          ),
          Container(
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
                  color: appRed,
                  onPressed: () {},
                  icon: const Icon(
                    CupertinoIcons.search,
                    size: 35,
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
          ),
        ],
      ),
    );
  }
}

List name = ['ankit', 'gupta', 'good', 'boy'];
