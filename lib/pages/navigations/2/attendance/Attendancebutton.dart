import 'package:flutter/material.dart';

import 'abc.dart';
import 'package:url_launcher/url_launcher.dart';

class SquareButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  SquareButton({required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(5, 5),
            blurRadius: 5,
          ),
        ],
      ),
      child: InkWell(
        onTap: onTap,
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

class GradeButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 100),
      margin: EdgeInsets.all(20),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            "Choose Any Grade That You Want TO See The Attendance list",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SquareButton(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AbcScreen()));
                  },
                  text: 'Grade 1'),
              SquareButton(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AbcScreen()));
                  },
                  text: 'Grade 2'),
              SquareButton(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AbcScreen()));
                  },
                  text: 'Grade 3'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SquareButton(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AbcScreen()));
                  },
                  text: 'Grade 4'),
              SquareButton(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AbcScreen()));
                  },
                  text: 'Grade 5'),
              SquareButton(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AbcScreen()));
                  },
                  text: 'Grade 6'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SquareButton(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AbcScreen()));
                  },
                  text: 'Grade 7'),
              SquareButton(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AbcScreen()));
                  },
                  text: 'Grade 8'),
              SquareButton(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AbcScreen()));
                  },
                  text: 'Grade 9'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SquareButton(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AbcScreen()));
                  },
                  text: 'Grade 10'),
              SquareButton(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AbcScreen()));
                  },
                  text: 'Grade 11'),
              SquareButton(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AbcScreen()));
                  },
                  text: 'Grade 12'),
            ],
          ),
        ],
      ),
    );
  }
}

class AbcButton extends StatelessWidget {
  final String sheetsUrl =
      'https://docs.google.com/spreadsheets/d/1XK1nvP7j5aKeGm_ZTCqsG9gp5XHoAFqc/edit?rtpof=true#gid=838452573';

  void openSheetsFile() async {
    if (await canLaunch(sheetsUrl)) {
      await launch(sheetsUrl);
    } else {
      throw 'Could not launch $sheetsUrl';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 100),
      child: Column(
        children: [
          SizedBox(
            height: 200,
          ),
          Text(
            "Choose Any Section That You Want TO See The Attendance list",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 80,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SquareButton(onTap: openSheetsFile, text: 'A'),
              SquareButton(onTap: openSheetsFile, text: 'B'),
              SquareButton(onTap: openSheetsFile, text: 'C'),
            ],
          ),
        ],
      ),
    );
  }
}
