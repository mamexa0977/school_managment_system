import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:school_managment_system/pages/navigations/2/selectionbutton.dart';

class Page2 extends StatefulWidget {
  

  const Page2();

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ButtonSection(),
    );
  }
}
