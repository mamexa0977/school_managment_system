import 'package:flutter/material.dart';
import 'package:school_managment_system/pages/navigations/2/Teacher%20Contact/contents.dart';
// ignore: unused_import
import 'package:school_managment_system/pages/navigations/2/attendance/Attendancebutton.dart';
import 'package:school_managment_system/pages/navigations/2/attendance/grades.dart';
import 'package:school_managment_system/pages/navigations/2/groupchat/groupchat.dart';
import 'package:school_managment_system/pages/navigations/Bot/Ai.dart';

class WhiteButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  WhiteButton({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      width: MediaQuery.of(context).size.width,
      height: 50,
      child: ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          backgroundColor: MaterialStateProperty.all(
            Colors.white,
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 100),
      child: Column(
        children: [
          WhiteButton(
            text: 'Schedule',
            onPressed: () {
              print('Schedule button pressed');
            },
          ),
          WhiteButton(
            text: 'Attendance',
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Grades()));
            },
          ),
          WhiteButton(
            text: 'Talk with Bot',
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => ChatPage()));
            },
          ),
          WhiteButton(
            text: 'Group Chat',
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => GroupChatPage()));
            },
          ),
          WhiteButton(
            text: 'Teacher Contact',
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Teachers()));
            },
          ),
          WhiteButton(
            text: 'About The School',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
