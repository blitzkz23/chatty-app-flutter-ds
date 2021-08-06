import 'package:flutter/material.dart';
import 'package:chatty_app/theme.dart';

class ChatBox extends StatelessWidget {
  final String imageUrl;
  final String message;
  final String time;

  ChatBox({this.imageUrl, this.message, this.time});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 30, right: 12),
              child: Image.asset(
                imageUrl,
                width: 50,
                height: 50,
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: lightGrey,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(30),
                  topRight: Radius.circular(30),
                  topLeft: Radius.circular(30),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    message,
                    style: titleTextStyle,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    time,
                    style: subtitleTextStyle.copyWith(color: black),
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
