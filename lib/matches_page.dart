import 'package:dating_app/other_person_profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'main.dart';

class MatchesPage extends StatelessWidget {
  const MatchesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.home),
        title: const Text('MATCHES'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                blocks('https://shorturl.at/alGP2', 'Sunny Paji', 34),
                TextButton(
                    style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(0),
                        foregroundColor: Colors.black),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const OtherPersonProfilePage();
                      }));
                    },
                    child:
                        blocks('https://shorturl.at/mpK27', 'Geeta Pal', 26)),
                blocks('https://shorturl.at/adjoV', 'Saurabh', 47),
                blocks('https://shorturl.at/luWZ0', 'Pinky', 32),
                blocks('https://shorturl.at/tzKLQ', 'Denial', 24),
              ],
            ),
          ),

          //bottom navigation bar start from here be careful
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
                  color: activeColor,
                  onPressed: () {},
                  icon: const Icon(
                    CupertinoIcons.heart_fill,
                    size: 35,
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
          ),
        ],
      ),
    );
  }
}

Widget blocks(String link, String name, int age) {
  return Container(
    decoration: BoxDecoration(
      color: appWhite,
      borderRadius: BorderRadius.circular(12),
    ),
    margin: const EdgeInsets.only(top: 15),
    padding: const EdgeInsets.all(10),
    height: 70,
    width: 310,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(backgroundImage: NetworkImage(link)),
            const SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Age: $age',
                  style: const TextStyle(
                    fontSize: 14,
                    color: darkGrey,
                  ),
                ),
              ],
            ),
          ],
        ),
        const Icon(
          CupertinoIcons.heart,
          color: appRed,
          size: 30,
        ),
      ],
    ),
  );
}
