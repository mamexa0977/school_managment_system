import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:school_managment_system/pages/navigations/2/Teacher%20Contact/button.dart';

class Teachers extends StatefulWidget {
  const Teachers({super.key});

  @override
  State<Teachers> createState() => _TeachersState();
}

class _TeachersState extends State<Teachers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TeachersSelection(),
    );
  }
}

class TeachersSelection extends StatelessWidget {
  const TeachersSelection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(child: TeacherButton()),
    );
  }
}

class HighSchool extends StatelessWidget {
  const HighSchool({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HighSchoolButton(),
    );
  }
}

class Elementary extends StatelessWidget {
  const Elementary({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EleentaryButton(),
    );
  }
}
