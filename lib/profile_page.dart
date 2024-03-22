import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'main.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.home),
        title: const Text('My Profile'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Column(
                  children: [
                    CircleAvatar(
                      radius: 70,
                      backgroundImage: NetworkImage(
                          'https://img.freepik.com/free-vector/hand-drawn-asian-old-person-illustration_23-2150904584.jpg'),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Super Granny',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 27),
                    ),
                    Text(
                      'Age: 55',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: darkGrey),
                    ),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 2, color: appRed),
                      borderRadius: BorderRadius.circular(10)),
                  height: 60,
                  width: 300,
                  child: const Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        CupertinoIcons.heart_circle_fill,
                        color: appRed,
                        size: 30,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Credits\n20',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        width: 155,
                      ),
                      Icon(
                        CupertinoIcons.add,
                        color: appRed,
                        size: 30,
                      )
                    ],
                  ),
                ),
                const Column(
                  children: [
                    SizedBox(
                      width: 290,
                      height: 60,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Edit Profile',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          Icon(
                            Icons.edit,
                            color: appRed,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 300,
                      child: Divider(
                        height: 2,
                      ),
                    ),
                  ],
                ),
                const Column(
                  children: [
                    SizedBox(
                      width: 290,
                      height: 60,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Setting',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          Icon(
                            Icons.settings,
                            color: appRed,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 300,
                      child: Divider(
                        height: 2,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 290,
                  height: 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Help & Support',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      Icon(
                        CupertinoIcons.chat_bubble_2_fill,
                        color: appRed,
                      ),
                    ],
                  ),
                ),
              ],
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
                  color: appRed,
                  onPressed: () {},
                  icon: const Icon(
                    CupertinoIcons.profile_circled,
                    size: 35,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
