import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'Attendancebutton.dart';

class Grades extends StatelessWidget {
  const Grades({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(child: GradeButtons()),
    );
  }
}