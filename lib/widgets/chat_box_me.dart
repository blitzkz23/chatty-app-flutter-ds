import 'package:flutter/material.dart';
import 'package:chatty_app/theme.dart';

class ChatBoxMe extends StatelessWidget {
  final String imageUrl;
  final String message;
  final String time;

  ChatBoxMe({this.imageUrl, this.message, this.time});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 38),
              child: Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
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
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 12, right: 30),
              child: Image.asset(
                imageUrl,
                width: 50,
                height: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
