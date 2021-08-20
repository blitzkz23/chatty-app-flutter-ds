import 'package:flutter/material.dart';
import 'package:chatty_app/theme.dart';
import 'package:chatty_app/widgets/chat_tile.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blue,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/message-page');
        },
        backgroundColor: green,
        child: Icon(
          Icons.add,
          size: 28,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Image.asset(
                  'assets/images/profile_pic.png',
                  width: 100,
                  height: 100,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Sabrina Carpenter",
                  style: TextStyle(fontSize: 20, color: white),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  "Travel Freelancer",
                  style: TextStyle(fontSize: 16, color: lightBlue),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(40),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Friends",
                        style: titleTextStyle,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/user1.png',
                        name: 'Joshuer',
                        message: 'Sorry, but you\'not my ty..',
                        date: 'Now',
                        unread: true,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/user2.png',
                        name: 'Gabriella',
                        message: 'I saw it clearly and mig...',
                        date: '2.30',
                        unread: false,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Groups",
                        style: titleTextStyle,
                      ),
                      ChatTile(
                        clickable: true,
                        imageUrl: 'assets/images/group1.png',
                        name: 'Jakarta Fair',
                        message: 'Why does everyone ca...',
                        date: '11:11',
                        unread: false,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/group2.png',
                        name: 'Angga Team',
                        message: 'Here here we can go...',
                        date: '7:13',
                        unread: true,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/group3.png',
                        name: 'Bentley',
                        message: 'The car which does not...',
                        date: '7:45',
                        unread: true,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
