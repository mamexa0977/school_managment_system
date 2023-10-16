import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:school_managment_system/pages/navigations/1/about.dart';
import 'package:school_managment_system/pages/navigations/1/bus.dart';
import 'package:school_managment_system/pages/navigations/1/library/library.dart';
import 'package:school_managment_system/pages/navigations/1/profile.dart';

import '../2/attendance/grades.dart';
import '../Bot/Ai.dart';
import 'activity.dart';
import 'package:http/http.dart' as http;
import 'exam/exam.dart';
import '../../../../usersaver.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  String responseText = '';
  String user = '';

  // @override
  // void initState() {
  //   super.initState();
  //   final userProvider = Provider.of<UserProvider>(context, listen: false);
  //   user = userProvider.userId;
  //   fetchData();
  // }

  Future<void> fetchData() async {
    final userProvider = Provider.of<UserProvider>(context, listen: false);
    user = userProvider.userId;
    final url =
        Uri.parse('http://192.168.0.116:5000/group_chat/get_name/${user}');

    try {
      final response = await http.get(url);

      if (response.statusCode == 200) {
        final responseData = jsonDecode(response.body);
        final name = responseData['name'];
        setState(() {
          responseText = name;
        });
      } else {
        setState(() {
          responseText = 'Failed to retrieve data: ${response.statusCode}';
        });
      }
    } catch (e) {
      setState(() {
        responseText = 'An error occurred: $e';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text(
              " Dashboard",
              style: TextStyle(color: Colors.black),
            ),
            automaticallyImplyLeading: false,
            centerTitle: true,
            backgroundColor: Colors.white,
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Container(
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(20)),
                    padding: EdgeInsets.symmetric(horizontal: 0, vertical: 20),
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                    child: Row(
                      children: [
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 0, vertical: 20),
                          child: Image(
                              width: 100,
                              height: 90,
                              image: NetworkImage(
                                  "https://static.vecteezy.com/system/resources/previews/006/986/349/non_2x/home-icon-with-shield-and-check-mark-icon-isolated-on-yellow-background-house-safety-symbol-insurance-concept-3d-illustration-style-vector.jpg",
                                  scale: 1)),
                        ),
                        Container(
                            child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(50)),
                              child: Text("ID_901283"),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              child: Text(
                                " Abdulmalik",
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text("Standard 11"),
                                SizedBox(
                                  width: 30,
                                ),
                                Text("Section A")
                              ],
                            )
                          ],
                        ))
                      ],
                    )),
                Container(
                  margin: EdgeInsets.all(40),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SquareButton(
                              image: NetworkImage(
                                  "https://www.pngitem.com/pimgs/m/245-2456104_png-transparent-icon-todo-list-png-download.png"),
                              text: "Attendance",
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Grades()));
                              }),
                          SquareButton(
                              image: NetworkImage(
                                  "https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg",
                                  scale: 3),
                              text: "Profile",
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ProfilePage()));
                              }),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SquareButton(
                              image: NetworkImage(
                                  "https://www.pngplay.com/wp-content/uploads/6/Exam-Logo-PNG-HD-Quality.png",
                                  scale: 5),
                              text: "Exam",
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ExamPage()));
                              }),
                          SquareButton(
                              image: NetworkImage(
                                  "https://www.clipartmax.com/png/middle/218-2180348_the-friends-of-the-wareham-free-library-have-plenty-transparent-background-books.png",
                                  scale: 5),
                              text: "Library",
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            BookListScreen()));
                              }),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SquareButton(
                              image: NetworkImage(
                                  "https://cms.eichertrucksandbuses.com/uploads/truck/sub-category/d2939914208dbb03c2a9d3534e7b967f.png",
                                  scale: 3),
                              text: "Bus Track",
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => BusScreen()));
                              }),
                          SquareButton(
                              image: NetworkImage(
                                  "https://thumbs.dreamstime.com/z/children-doing-homework-vector-cute-cartoon-happy-face-44485312.jpg",
                                  scale: 14),
                              text: "Activity",
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ActivityScreen()));
                              }),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SquareButton(
                              image: NetworkImage(
                                  "https://png.pngtree.com/png-vector/20201224/ourlarge/pngtree-future-intelligent-technology-robot-ai-png-image_2588803.jpg",
                                  scale: 6),
                              text: "Talk Robot",
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ChatPage()));
                              }),
                          SquareButton(
                              image: NetworkImage(
                                  "https://media.istockphoto.com/id/186655818/vector/vector-school-building.jpg?s=612x612&w=0&k=20&c=R4E6i4SFNUehDmwK1R--QddAozO4yLhAfYxMdzL1kpk=",
                                  scale: 6),
                              text: "About School",
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => AboutPage()));
                              }),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}

class SquareButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final ImageProvider image;
  SquareButton({required this.text, required this.onTap, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
      width: 150,
      height: 150,
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
        child: Column(
          children: [
            Image(image: image),
            Center(
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
