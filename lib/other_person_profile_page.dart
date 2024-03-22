import 'package:dating_app/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class OtherPersonProfilePage extends StatelessWidget {
  const OtherPersonProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('other person'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 20),
              width: 300,
              height: 400,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: const FittedBox(
                  alignment: Alignment.center,
                  fit: BoxFit.cover,
                  clipBehavior: Clip.hardEdge,
                  child:
                      Image(image: NetworkImage('https://shorturl.at/mpK27')),
                ),
              ),
            ),
            const SizedBox(
              width: 290,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Geeta Pal',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Age: 26',
                    style: TextStyle(
                      fontSize: 18,
                      color: darkGrey,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              width: 300,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    CupertinoIcons.xmark_seal_fill,
                    color: darkGrey,
                    size: 60,
                  ),
                  Icon(
                    CupertinoIcons.heart_fill,
                    color: appRed,
                    size: 60,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
