import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: Row(
                children: [
                  Column(
                    children: const [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage:
                            AssetImage('assets/images/my_avatar.jpg'),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Evans',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Expanded(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: const [
                            Text(
                              '10',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Posts',
                            ),
                          ],
                        ),
                        Column(
                          children: const [
                            Text(
                              '10k',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Followers',
                            ),
                          ],
                        ),
                        Column(
                          children: const [
                            Text(
                              '10',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Following',
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 15, right: 15),
              width: double.infinity,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.black87,
                ),
                onPressed: () {},
                child: const Text('Edit Profile'),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  'assets/images/grid.png',
                  width: 25,
                  height: 25,
                ),
                const Icon(Icons.person_outline_rounded, size: 30),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 500,
              child: GridView.count(
                physics: const BouncingScrollPhysics(),
                crossAxisCount: 3,
                crossAxisSpacing: 3,
                mainAxisSpacing: 3,
                children: [
                  Container(
                    color: Colors.blue,
                  ),
                  Container(
                    color: Colors.blue,
                  ),
                  Container(
                    color: Colors.blue,
                  ),
                  Container(
                    color: Colors.blue,
                  ),
                  Container(
                    color: Colors.blue,
                  ),
                  Container(
                    color: Colors.blue,
                  ),
                  Container(
                    color: Colors.blue,
                  ),
                  Container(
                    color: Colors.blue,
                  ),
                  Container(
                    color: Colors.blue,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
