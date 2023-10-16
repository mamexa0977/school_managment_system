import 'package:flutter/material.dart';

class NextExamPage extends StatefulWidget {
  @override
  _NextExamPageState createState() => _NextExamPageState();
}

class _NextExamPageState extends State<NextExamPage> {
  final String subject = "Maths";
  final String date = "2023-02-20";
  final String time = "10:00 AM";
  final String room = "A-101";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Next Exam"),
        backgroundColor: Colors.lightBlue[200],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.lightBlue.shade100,
              Colors.lightBlue.shade200,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Next Exam Information",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 20),
                ExamDetailsCard(
                  subject: subject,
                  date: date,
                  time: time,
                  room: room,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ExamDetailsCard extends StatelessWidget {
  final String subject;
  final String date;
  final String time;
  final String room;

  ExamDetailsCard({
    required this.subject,
    required this.date,
    required this.time,
    required this.room,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            ExamDetail(title: "Subject", value: subject),
            SizedBox(height: 20),
            ExamDetail(title: "Date", value: date),
            SizedBox(height: 20),
            ExamDetail(title: "Time", value: time),
            SizedBox(height: 20),
            ExamDetail(title: "Room", value: room),
          ],
        ),
      ),
    );
  }
}

class ExamDetail extends StatelessWidget {
  final String title;
  final String value;

  ExamDetail({required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          title,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.lightBlue[200],
          ),
        ),
        Text(
          value,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.lightBlue[200],
          ),
        ),
      ],
    );
  }
}
