import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tikt/util/profiletab_2.dart';
import 'package:tikt/util/profiletab_3.dart';
import 'package:badges/badges.dart';

class UserProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) 
  {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Row(
          children: [
            Text('nashwa', style: TextStyle(color: Colors.white)),
            SizedBox(width: 10),
            Container(
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(.1),
                  child: Icon(Icons.check, color: Colors.white),
                ))
          ],
        ),
        elevation: 0,
        leading: Container(
          margin: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 2, 15, 25),
            borderRadius: BorderRadius.all(Radius.circular(50)),
          ),
          child:
              const Icon(Icons.arrow_back_ios_new_sharp, color: Colors.white),
        ),
        actions: [
          Container(
            padding: const EdgeInsets.all(5),
            margin: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 2, 15, 25),
              borderRadius: BorderRadius.all(Radius.circular(50)),
            ),
            child: const Icon(Icons.more_horiz, color: Colors.white),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: 150.0,
                  height: 180.0,
                  child: Container(
                    width: 110.0,
                    height: 110.0,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromARGB(255, 244, 54, 70),
                        width: 5,
                      ),
                      shape: BoxShape.circle,
                    ),
                    child: Container(
                      margin: const EdgeInsets.all(4),
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color.fromARGB(255, 8, 17, 181),
                          width: 5,
                        ),
                        shape: BoxShape.circle,
                        image: const DecorationImage(
                            image: NetworkImage(
                              'https://pbs.twimg.com/media/FiRRfNfXEAMCwmk?format=jpg&name=large',
                            ),
                            fit: BoxFit.cover,
                            alignment: Alignment.topCenter),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: -3,
                  left: 55.0,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 5,
                      ),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Badge(
                      toAnimate: false,
                      shape: BadgeShape.square,
                      badgeColor: Colors.red,
                      borderRadius: BorderRadius.circular(20.0),
                      badgeContent: const Text('LIVE',
                          style:
                              TextStyle(color: Colors.white, fontSize: 15.0)),
                    ),
                  ),
                ),
              ],
            ),
            // profile photo

            Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: const Text(
                    '@neymarjr',
                    style: TextStyle(color: Color.fromARGB(255, 245, 241, 241)),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  '''NJ 🇧🇷
      Athlete
      Isaías 54:17 🙏🏽
      m.nftstar.com
      ''',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Color.fromARGB(255, 245, 241, 241)),
                ),
              ],
            ),
            // username

            // number of following, followers, likes
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.centerRight,
                    child: Column(
                      children: [
                        const Text(
                          '1,704',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 24),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          'Following',
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Column(
                      children: [
                        const Text(
                          '187M',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 24),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          'Followers',
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: [
                        const Text(
                          '5,380',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 24),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          'Posts',
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 25),

            // buttons -> edit profile, insta links, bookmark
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  padding:
                      const EdgeInsets.symmetric(vertical: 13, horizontal: 90),
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 56, 77, 182),
                      borderRadius: BorderRadius.circular(50)),
                  child: const Text('Follow',
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 31, 26, 71),
                        border: Border.all(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(70)),
                    child: const Icon(
                      Icons.camera_alt,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 25),

            // default tab controller
            GridView.builder(
              itemCount: 40,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Image.network(
                    'https://picsum.photos/200?r=${Random().nextDouble()}',
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
