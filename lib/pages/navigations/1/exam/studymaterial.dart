import 'package:flutter/material.dart';

class StudyMaterialScreen extends StatelessWidget {
  final List<String> studyMaterials = [
    "Mathematics Study Guide",
    "Physics Lecture Notes",
    "Chemistry Textbook",
    "Biology Practice Worksheets",
    "History Study Material",
    "Geography Reference Book",
    "Literature Reading List",
    "Computer Science Coding Examples",
    "Art Appreciation Slides",
    "Music Theory Workbook",
    "Biology Practice Worksheets",
    "History Study Material",
    "Geography Reference Book",
    "Literature Reading List",
    "Computer Science Coding Examples",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Study Materials'),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.lightBlue[50],
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Available Study Materials',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: studyMaterials.length,
                itemBuilder: (context, index) {
                  return StudyMaterialItem(
                    studyMaterialName: studyMaterials[index],
                    subject: 'Subject X',
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class StudyMaterialItem extends StatelessWidget {
  final String studyMaterialName;
  final String subject;

  StudyMaterialItem({
    required this.studyMaterialName,
    required this.subject,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: ListTile(
        leading: Icon(
          Icons.description,
        ),
        title: Text(
          studyMaterialName,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(subject),
        trailing: IconButton(
          icon: Icon(Icons.file_download),
          onPressed: () {},
        ),
        onTap: () {
          // Add your custom logic here for handling item tap
          // For example, open the study material in a new screen
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => StudyMaterialDetailsScreen(
                studyMaterialName: studyMaterialName,
                subject: subject,
              ),
            ),
          );
        },
      ),
    );
  }
}

class StudyMaterialDetailsScreen extends StatelessWidget {
  final String studyMaterialName;
  final String subject;

  StudyMaterialDetailsScreen({
    required this.studyMaterialName,
    required this.subject,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Study Material Details'),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Study Material Name:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            Text(studyMaterialName),
            SizedBox(height: 20),
            Text(
              'Subject:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            Text(subject),
            SizedBox(height: 20),
            Text(
              'Description:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            Text(
              'Add your study material description here.',
              style: TextStyle(
                fontStyle: FontStyle.italic,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Add your custom logic here for downloading the study material
                // For example, initiate a download process
              },
              child: Text('Download'),
            ),
          ],
        ),
      ),
    );
  }
}
