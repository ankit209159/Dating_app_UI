import 'package:dating_app/main.dart';
import 'package:flutter/material.dart';

const imageUrl =
    'https://cdni.iconscout.com/illustration/premium/thumb/online-dating-app-5155859-4309052.png?f=webp';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appWhite,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Image(image: NetworkImage(imageUrl)),
            const Text(
              'Welcome To\n Dating App',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 40,
                color: darkGrey,
              ),
            ),
            const SizedBox(
              width: 300,
              height: 80,
              child: Divider(
                color: lightGrey,
                thickness: 4,
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/matchesPage');
              },
              child: Container(
                height: 60,
                width: 300,
                decoration: BoxDecoration(
                    color: appRed, borderRadius: BorderRadius.circular(100)),
                child: const Center(
                    child: Text(
                  'Sign In',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: appWhite,
                  ),
                )),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/matchesPage');
              },
              child: Container(
                height: 60,
                width: 300,
                decoration: BoxDecoration(
                    color: appRed, borderRadius: BorderRadius.circular(100)),
                child: const Center(
                    child: Text(
                  'Sign Up',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: appWhite,
                  ),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
