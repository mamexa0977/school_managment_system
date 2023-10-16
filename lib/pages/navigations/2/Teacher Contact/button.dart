import 'package:flutter/material.dart';
import 'package:school_managment_system/pages/navigations/2/Teacher%20Contact/contents.dart';

class ReusableButton extends StatelessWidget {
  ReusableButton(
      {required this.name, required this.image, required this.onPressed});

  final String name;
  final NetworkImage image;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Row(
          children: [
            CircleAvatar(
              backgroundImage: image,
              radius: 30,
            ),
            SizedBox(width: 10),
            Text(
              name,
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TeacherButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 200,
        ),
        InkWell(
          onTap: () {},
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Image(
                    image: NetworkImage(
                        "https://www.livoniapublicschools.org/cms/lib/MI50000451/Centricity/Domain/167/LPS%20Board%20of%20Ed%202023.JPG",
                        scale: 2)),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 30),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HighSchool()));
                    },
                    child: Row(
                      children: [
                        SizedBox(width: 10),
                        Text(
                          "Special education teachers",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 50,
        ),
        InkWell(
          onTap: () {},
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Image(
                    image: NetworkImage(
                        "https://st.depositphotos.com/1518767/2572/i/600/depositphotos_25722903-stock-photo-business-brainstorming.jpg",
                        scale: 2)),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 30),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HighSchool()));
                    },
                    child: Row(
                      children: [
                        SizedBox(width: 10),
                        Text(
                          "High education teachers",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 50,
        ),
        InkWell(
          onTap: () {},
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Image(
                    image: NetworkImage(
                        "https://study-eu.s3.amazonaws.com/uploads/image/path/684/wide_fullhd_study-education-teaching.jpg",
                        scale: 2)),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 30),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HighSchool()));
                    },
                    child: Row(
                      children: [
                        SizedBox(width: 10),
                        Text(
                          "Middle education teachers",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 50,
        ),
        InkWell(
          onTap: () {},
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Image(
                    image: NetworkImage(
                        "https://resilienteducator.com/wp-content/uploads/2012/10/elementary-school-teacher.jpg",
                        scale: 2)),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 30),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HighSchool()));
                    },
                    child: Row(
                      children: [
                        SizedBox(width: 10),
                        Text(
                          "Elementary education teachers",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 50,
        ),
      ],
    );
  }
}

class HighSchoolButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 80,
        ),
        ReusableButton(
            onPressed: () {},
            name: 'Yohanness Addisu',
            image: NetworkImage(
                'https://t4.ftcdn.net/jpg/01/01/04/21/360_F_101042187_ksgPPYdbzU24Jql483ByxCVSwXICLM2w.jpg')),
        SizedBox(height: 30),
        ReusableButton(
            onPressed: () {},
            name: 'Seid Sherefa',
            image: NetworkImage(
                'https://t4.ftcdn.net/jpg/01/01/04/21/360_F_101042187_ksgPPYdbzU24Jql483ByxCVSwXICLM2w.jpg')),
        SizedBox(height: 30),
        ReusableButton(
            onPressed: () {},
            name: 'Bulatu Mengstu',
            image: NetworkImage(
                'https://t4.ftcdn.net/jpg/01/01/04/21/360_F_101042187_ksgPPYdbzU24Jql483ByxCVSwXICLM2w.jpg')),
        SizedBox(height: 30),
        ReusableButton(
            onPressed: () {},
            name: 'Mahari Teshome',
            image: NetworkImage(
                'https://t4.ftcdn.net/jpg/01/01/04/21/360_F_101042187_ksgPPYdbzU24Jql483ByxCVSwXICLM2w.jpg')),
        SizedBox(height: 30),
        ReusableButton(
            onPressed: () {},
            name: 'Gashaw Seifu',
            image: NetworkImage(
                'https://t4.ftcdn.net/jpg/01/01/04/21/360_F_101042187_ksgPPYdbzU24Jql483ByxCVSwXICLM2w.jpg')),
        SizedBox(height: 30),
        ReusableButton(
            onPressed: () {},
            name: 'Alex Abebe',
            image: NetworkImage(
                'https://t4.ftcdn.net/jpg/01/01/04/21/360_F_101042187_ksgPPYdbzU24Jql483ByxCVSwXICLM2w.jpg')),
        SizedBox(height: 30),
        ReusableButton(
            onPressed: () {},
            name: 'Addisu Bereha',
            image: NetworkImage(
                'https://t4.ftcdn.net/jpg/01/01/04/21/360_F_101042187_ksgPPYdbzU24Jql483ByxCVSwXICLM2w.jpg')),
      ],
    );
  }
}

class EleentaryButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        ReusableButton(
            onPressed: () {},
            name: 'John Doe',
            image: NetworkImage(
                'https://t4.ftcdn.net/jpg/01/01/04/21/360_F_101042187_ksgPPYdbzU24Jql483ByxCVSwXICLM2w.jpg')),
        SizedBox(height: 30),
        ReusableButton(
            onPressed: () {},
            name: 'Jane Doe',
            image: NetworkImage(
                'https://t4.ftcdn.net/jpg/01/01/04/21/360_F_101042187_ksgPPYdbzU24Jql483ByxCVSwXICLM2w.jpg')),
        SizedBox(height: 30),
        ReusableButton(
            onPressed: () {},
            name: 'Michael Smith',
            image: NetworkImage(
                'https://t4.ftcdn.net/jpg/01/01/04/21/360_F_101042187_ksgPPYdbzU24Jql483ByxCVSwXICLM2w.jpg')),
        SizedBox(height: 30),
        ReusableButton(
            onPressed: () {},
            name: 'Emily Johnson',
            image: NetworkImage(
                'https://t4.ftcdn.net/jpg/01/01/04/21/360_F_101042187_ksgPPYdbzU24Jql483ByxCVSwXICLM2w.jpg')),
        SizedBox(height: 30),
        ReusableButton(
            onPressed: () {},
            name: 'William Brown',
            image: NetworkImage(
                'https://t4.ftcdn.net/jpg/01/01/04/21/360_F_101042187_ksgPPYdbzU24Jql483ByxCVSwXICLM2w.jpg')),
        SizedBox(height: 30),
        ReusableButton(
            onPressed: () {},
            name: 'Jennifer Davis',
            image: NetworkImage(
                'https://t4.ftcdn.net/jpg/01/01/04/21/360_F_101042187_ksgPPYdbzU24Jql483ByxCVSwXICLM2w.jpg')),
        SizedBox(height: 30),
        ReusableButton(
            onPressed: () {},
            name: 'Robert Smith',
            image: NetworkImage(
                'https://t4.ftcdn.net/jpg/01/01/04/21/360_F_101042187_ksgPPYdbzU24Jql483ByxCVSwXICLM2w.jpg')),
        SizedBox(height: 30),
        ReusableButton(
            onPressed: () {},
            name: 'Ashley Anderson',
            image: NetworkImage(
                'https://t4.ftcdn.net/jpg/01/01/04/21/360_F_101042187_ksgPPYdbzU24Jql483ByxCVSwXICLM2w.jpg')),
        SizedBox(height: 30),
        ReusableButton(
            onPressed: () {},
            name: 'David Johnson',
            image: NetworkImage(
                'https://t4.ftcdn.net/jpg/01/01/04/21/360_F_101042187_ksgPPYdbzU24Jql483ByxCVSwXICLM2w.jpg')),
        SizedBox(height: 30),
        ReusableButton(
            onPressed: () {},
            name: 'Daniel Green',
            image: NetworkImage(
                'https://t4.ftcdn.net/jpg/01/01/04/21/360_F_101042187_ksgPPYdbzU24Jql483ByxCVSwXICLM2w.jpg')),
      ],
    );
  }
}
