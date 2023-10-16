// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// void main() => runApp(AboutPage());

// class AboutPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: ListView(
//           children: <Widget>[
//             Container(
//               height: 250.0,
//               decoration: BoxDecoration(
//                 image: DecorationImage(
//                   image: NetworkImage(
//                       "https://news.mit.edu/sites/default/files/images/201908/MIT-Mindfulness-Benefits_2.jpg"),
//                   fit: BoxFit.cover,
//                 ),
//               ),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   Text(
//                     'Best School in the Ethiopia',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 30.0,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   SizedBox(
//                     height: 10.0,
//                   ),
//                   Text(
//                     'Shaping the future, one student at a time',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 18.0,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Container(
//               padding: EdgeInsets.all(20.0),
//               child: Column(
//                 children: <Widget>[
//                   Column(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: <Widget>[
//                       Container(
//                         decoration: BoxDecoration(
//                           color: Colors.lightBlueAccent,
//                           borderRadius: BorderRadius.circular(10.0),
//                         ),
//                         child: Padding(
//                           padding: EdgeInsets.all(10.0),
//                           child: Column(
//                             children: <Widget>[
//                               Icon(
//                                 Icons.people,
//                                 color: Colors.white,
//                                 size: 40.0,
//                               ),
//                               SizedBox(
//                                 height: 10.0,
//                               ),
//                               Text(
//                                 'Our Community',
//                                 style: TextStyle(
//                                   color: Colors.white,
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 18.0,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                       SizedBox(
//                         height: 20.0,
//                       ),
//                       Container(
//                         decoration: BoxDecoration(
//                           color: Colors.lightBlueAccent,
//                           borderRadius: BorderRadius.circular(10.0),
//                         ),
//                         child: Padding(
//                           padding: EdgeInsets.all(10.0),
//                           child: Column(
//                             children: <Widget>[
//                               Icon(
//                                 Icons.school,
//                                 color: Colors.white,
//                                 size: 40.0,
//                               ),
//                               SizedBox(height: 10),
//                               Text(
//                                 'Academic Programs',
//                                 style: TextStyle(
//                                   color: Colors.white,
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 18.0,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                       SizedBox(
//                         height: 20.0,
//                       ),
//                       Container(
//                         decoration: BoxDecoration(
//                           color: Colors.lightBlueAccent,
//                           borderRadius: BorderRadius.circular(10.0),
//                         ),
//                         child: Padding(
//                           padding: EdgeInsets.all(10.0),
//                           child: Column(
//                             children: <Widget>[
//                               Icon(
//                                 Icons.directions_run,
//                                 color: Colors.white,
//                                 size: 40.0,
//                               ),
//                               SizedBox(
//                                 height: 10.0,
//                               ),
//                               Text(
//                                 'Athletic Programs',
//                                 style: TextStyle(
//                                   color: Colors.white,
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 18.0,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                   SizedBox(
//                     height: 30.0,
//                   ),
//                   Container(
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(10.0),
//                       color: Colors.lightBlueAccent,
//                     ),
//                     child: Padding(
//                       padding: EdgeInsets.all(20.0),
//                       child: Column(
//                         children: <Widget>[
//                           Icon(
//                             FontAwesomeIcons.graduationCap,
//                             color: Colors.white,
//                             size: 40.0,
//                           ),
//                           SizedBox(
//                             height: 10.0,
//                           ),
//                           Text(
//                             'Success Stories',
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontWeight: FontWeight.bold,
//                               fontSize: 18.0,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Container(
//               padding: EdgeInsets.all(20.0),
//               child: Column(
//                 children: <Widget>[
//                   Text(
//                     'Campus Life',
//                     style: TextStyle(
//                       fontSize: 30.0,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   SizedBox(
//                     height: 10.0,
//                   ),
//                   Container(
//                     height: 200.0,
//                     child: ListView(
//                       scrollDirection: Axis.horizontal,
//                       children: <Widget>[
//                         Container(
//                           width: 340.0,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(10.0),
//                             image: DecorationImage(
//                               image: NetworkImage(
//                                   "https://previews.123rf.com/images/jovannig/jovannig1504/jovannig150400026/38314615-elementary-school-children-happy-playing-basketball-at-school-.jpg"),
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                         ),
//                         SizedBox(
//                           width: 20.0,
//                         ),
//                         Container(
//                           width: 340.0,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(10.0),
//                             image: DecorationImage(
//                               image: NetworkImage(
//                                   "https://www.responsiveclassroom.org/wp-content/uploads/2016/04/DSC_2388-1024x682.jpg"),
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                         ),
//                         SizedBox(
//                           width: 20.0,
//                         ),
//                         Container(
//                           width: 340.0,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(10.0),
//                             image: DecorationImage(
//                               image: NetworkImage(
//                                   "https://www.cdc.gov/healthyyouth/protective/images/school_connectedness.jpg?_=76386"),
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   SizedBox(
//                     height: 30.0,
//                   ),
//                   Container(
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(10.0),
//                       color: Colors.lightBlueAccent,
//                     ),
//                     child: Padding(
//                       padding: EdgeInsets.all(20.0),
//                       child: Column(
//                         children: <Widget>[
//                           Icon(
//                             FontAwesomeIcons.bookOpen,
//                             color: Colors.white,
//                             size: 40.0,
//                           ),
//                           SizedBox(
//                             height: 10.0,
//                           ),
//                           Text(
//                             'Student Resources',
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontWeight: FontWeight.bold,
//                               fontSize: 18.0,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(AboutPage());
}

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              _buildHeader(),
              _buildFeature(
                Icons.people,
                'Our Community',
              ),
              _buildFeature(
                Icons.school,
                'Academic Programs',
              ),
              _buildFeature(
                Icons.directions_run,
                'Athletic Programs',
              ),
              _buildFeature(
                FontAwesomeIcons.graduationCap,
                'Success Stories',
              ),
              _buildCampusLife(),
              _buildFeature(
                FontAwesomeIcons.bookOpen,
                'Student Resources',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      height: 250.0,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              "https://news.mit.edu/sites/default/files/images/201908/MIT-Mindfulness-Benefits_2.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Best School in Ethiopia',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            'Shaping the future, one student at a time',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFeature(IconData icon, String title) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.lightBlueAccent,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              Icon(
                icon,
                color: Colors.white,
                size: 40.0,
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCampusLife() {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          Text(
            'Campus Life',
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            height: 200.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                _buildCampusLifeImage(
                  "https://previews.123rf.com/images/jovannig/jovannig1504/jovannig150400026/38314615-elementary-school-children-happy-playing-basketball-at-school-.jpg",
                ),
                _buildCampusLifeImage(
                  "https://www.responsiveclassroom.org/wp-content/uploads/2016/04/DSC_2388-1024x682.jpg",
                ),
                _buildCampusLifeImage(
                  "https://www.cdc.gov/healthyyouth/protective/images/school_connectedness.jpg?_=76386",
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          _buildFeature(
            FontAwesomeIcons.bookOpen,
            'Student Resources',
          ),
        ],
      ),
    );
  }

  Widget _buildCampusLifeImage(String imageUrl) {
    return Container(
      width: 340.0,
      margin: EdgeInsets.only(right: 20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
