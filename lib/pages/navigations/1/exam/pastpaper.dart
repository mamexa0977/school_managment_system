import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'dart:math';

class PastPapersPage extends StatelessWidget {
  final List<String> pageNames = [
    "Past Exam Papers",
    "Test Archives",
    "Historical Assessments",
    "Exam Records",
    "Paper Repository",
  ];

  String getRandomPageName() {
    final random = Random();
    return pageNames[random.nextInt(pageNames.length)];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(getRandomPageName()),
        backgroundColor: Colors.lightBlue[200],
      ),
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              SizedBox(height: 20),
              SearchBar(),
              SizedBox(height: 20),
              Expanded(
                child: PastPapersList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.lightBlue[200],
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: ListTile(
        leading: Icon(
          Icons.search,
          color: Colors.white,
        ),
        title: TextField(
          decoration: InputDecoration(
            hintText: 'Search past papers',
            hintStyle: TextStyle(
              color: Colors.white70,
            ),
            border: InputBorder.none,
          ),
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class PastPapersList extends StatelessWidget {
  final List<String> studyMaterials = [
    'Past Paper Analysis',
    'Exam Preparation Guide',
    'Sample Questions',
    'Marking Scheme',
    'Study Notes',
    'Revision Tips',
    'Exam Strategies',
    'Practice Tests',
    'Subject Syllabus',
    'Study Resources',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: studyMaterials.length,
      itemBuilder: (context, index) {
        return PastPaperItem(
          studyMaterial: studyMaterials[index],
          subject: 'Subject',
          year: 'Year',
        );
      },
    );
  }
}

class PastPaperItem extends StatelessWidget {
  final String studyMaterial;
  final String subject;
  final String year;
  final bool isDownloaded;

  PastPaperItem({
    required this.studyMaterial,
    required this.subject,
    required this.year,
    this.isDownloaded = false,
  });

  void downloadPaper() {
    // Perform the download functionality
    // You can add your implementation here
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Colors.lightBlue[50],
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: ListTile(
        leading: Icon(
          Icons.description,
          color: Colors.lightBlue[200],
        ),
        title: Text(
          studyMaterial,
          style: TextStyle(
            color: Colors.lightBlue[200],
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          '$subject, $year',
          style: TextStyle(
            color: Colors.lightBlue[200],
          ),
        ),
        trailing: IconButton(
          icon: Icon(
            isDownloaded ? Icons.file_present : Icons.file_download,
          ),
          color: Colors.lightBlue[200],
          onPressed: () {
            if (isDownloaded) {
              // Open the downloaded paper
              // You can add your implementation here
            } else {
              downloadPaper();
            }
          },
        ),
      ),
    );
  }
}
