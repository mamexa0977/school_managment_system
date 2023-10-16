import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:school_managment_system/pages/navigations/1/profile.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  bool _darkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _darkMode ? Colors.black : Colors.white,
      appBar: AppBar(
        title: Text(
          " Settings",
          style: TextStyle(
            color: _darkMode ? Colors.white : Colors.black,
          ),
        ),
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: _darkMode ? Colors.black : Colors.white,
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 80,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(80), color: Colors.grey),
            child: ListTile(
              leading: Icon(Icons.brightness_3),
              title: Text('Dark Mode'),
              trailing: Switch(
                value: _darkMode,
                onChanged: (value) {
                  setState(() {
                    _darkMode = value;
                  });
                },
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey,
                ),
              ),
            ),
            child: ListTile(
              leading: Icon(
                  color: _darkMode ? Colors.white : Colors.black,
                  Icons.account_circle),
              title: Text(
                  style: TextStyle(
                    color: _darkMode ? Colors.white : Colors.black,
                  ),
                  'Account'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProfilePage()));
              },
              trailing: Icon(
                  color: _darkMode ? Colors.white : Colors.black,
                  Icons.navigate_next_outlined),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey,
                ),
              ),
            ),
            child: ListTile(
              leading: Icon(
                  color: _darkMode ? Colors.white : Colors.black,
                  Icons.notifications),
              title: Text(
                  style: TextStyle(
                    color: _darkMode ? Colors.white : Colors.black,
                  ),
                  'Notifications & Sounds'),
              trailing: Icon(
                  color: _darkMode ? Colors.white : Colors.black,
                  Icons.navigate_next_outlined),
              onTap: () {},
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey,
                ),
              ),
            ),
            child: ListTile(
              leading: Icon(
                  color: _darkMode ? Colors.white : Colors.black,
                  Icons.security),
              title: Text(
                  style: TextStyle(
                    color: _darkMode ? Colors.white : Colors.black,
                  ),
                  'Privacy & Security'),
              onTap: () {},
              trailing: Icon(
                  color: _darkMode ? Colors.white : Colors.black,
                  Icons.navigate_next_outlined),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey,
                ),
              ),
            ),
            child: ListTile(
              leading: Icon(
                  color: _darkMode ? Colors.white : Colors.black, Icons.policy),
              title: Text(
                  style: TextStyle(
                    color: _darkMode ? Colors.white : Colors.black,
                  ),
                  'Policy'),
              trailing: Icon(
                  color: _darkMode ? Colors.white : Colors.black,
                  Icons.navigate_next_outlined),
              onTap: () {},
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey,
                ),
              ),
            ),
            child: ListTile(
              leading: Icon(
                  color: _darkMode ? Colors.white : Colors.black,
                  Icons.headphones),
              title: Text(
                  style: TextStyle(
                    color: _darkMode ? Colors.white : Colors.black,
                  ),
                  'Help and Support'),
              onTap: () {},
              trailing: Icon(
                  color: _darkMode ? Colors.white : Colors.black,
                  Icons.navigate_next_outlined),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey,
                ),
              ),
            ),
            child: ListTile(
              leading: Icon(
                  color: _darkMode ? Colors.white : Colors.black,
                  Icons.warning_amber_sharp),
              title: Text(
                  style: TextStyle(
                    color: _darkMode ? Colors.white : Colors.black,
                  ),
                  'About'),
              onTap: () {},
              trailing: Icon(
                  color: _darkMode ? Colors.white : Colors.black,
                  Icons.navigate_next_outlined),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey,
                ),
              ),
            ),
            child: ListTile(
              leading: Icon(
                color: _darkMode ? Colors.white : Colors.black,
                Icons.logout_rounded,
              ),
              title: Text(
                'Logout',
                style: TextStyle(color: Colors.red),
              ),
              onTap: () {},
              trailing: Icon(
                  color: _darkMode ? Colors.white : Colors.black,
                  Icons.navigate_next_outlined),
            ),
          ),
        ],
      ),
    );
  }
}
