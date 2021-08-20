import 'package:flutter/material.dart';
import 'package:chatty_app/theme.dart';

class ChatTile extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String message;
  final String date;
  final bool unread;
  final bool clickable;

  ChatTile(
      {this.imageUrl,
      this.name,
      this.message,
      this.date,
      this.unread,
      this.clickable = false});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/messsage');
      },
      child: Container(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 16,
          ),
          child: Row(
            children: [
              Image.asset(
                imageUrl,
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
                    name,
                    style: titleTextStyle,
                  ),
                  Text(
                    message,
                    style: unread
                        ? subtitleTextStyle.copyWith(color: black)
                        : subtitleTextStyle,
                  )
                ],
              ),
              Spacer(),
              Text(
                date,
                style: subtitleTextStyle.copyWith(
                  color: black,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
