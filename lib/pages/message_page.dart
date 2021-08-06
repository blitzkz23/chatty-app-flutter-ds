import 'package:flutter/material.dart';
import 'package:chatty_app/theme.dart';
import 'package:chatty_app/widgets/chat_tile.dart';
import 'package:chatty_app/widgets/chat_box.dart';
import 'package:chatty_app/widgets/chat_box_me.dart';

class MessagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBlue,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: white,
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(40)),
              ),
              child: Padding(
                padding: EdgeInsets.all(30),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/group1.png',
                      width: 55,
                      height: 55,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Jakarta Fair',
                          style: titleTextStyle,
                        ),
                        Text(
                          '14,209 members',
                          style: subtitleTextStyle,
                        ),
                      ],
                    ),
                    Spacer(),
                    Image.asset(
                      'assets/images/call_btn.png',
                      height: 55,
                      width: 55,
                    )
                  ],
                ),
              ),
            ),
            ChatBox(
              imageUrl: 'assets/images/user1.png',
              message: 'How are ya guys?',
              time: '2:30',
            ),
            ChatBox(
              imageUrl: 'assets/images/user3.png',
              message: 'Daijoubusuuu yo',
              time: '2:39',
            ),
            ChatBoxMe(
              imageUrl: 'assets/images/user4.png',
              message:
                  'Thinking about how to deal \nwith this client from hell...',
              time: '3:02',
            ),
            ChatBox(
              imageUrl: 'assets/images/user2.png',
              message: 'Suki dayo',
              time: '3:19',
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(30),
              child: Container(
                decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(40),
                    bottom: Radius.circular(40),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Text(
                        "Type message...",
                        style: subtitleTextStyle,
                      ),
                      Spacer(),
                      Image.asset(
                        'assets/images/send_btn.png',
                        width: 35,
                        height: 35,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
