import 'package:flutter/material.dart';

class Activity {
  final String name;
  final String description;
  final String imageUrl;
  final DateTime date;

  Activity({
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.date,
  });
}

List<Activity> activities = [
  Activity(
    name: 'Sports Tournament',
    description: 'Annual sports tournament for all students.',
    imageUrl: 'https://wsss.org.nz/wp-content/uploads/2019/08/multi-sport.png',
    date: DateTime(2023, 6, 15),
  ),
  Activity(
    name: 'Science Fair',
    description: 'Exhibit and showcase of science projects.',
    imageUrl:
        'https://www.nsta.org/sites/default/files/csl/2016/02/CSL-Manuscript-pic2_1024-1024x680.jpg',
    date: DateTime(2023, 7, 10),
  ),
  Activity(
    name: 'Art Exhibition',
    description: 'Display of artwork created by students.',
    imageUrl:
        'https://www.insight-art.co.uk/images/home-panel/childrens-studio-800.jpg',
    date: DateTime(2023, 8, 5),
  ),
  Activity(
    name: 'Sports Day',
    description: 'Annual sports event showcasing students\' athletic talents.',
    imageUrl:
        'https://price-buckland.co.uk/wp-content/uploads/2019/10/How-to-ace-sports-day-banner-image.jpg',
    date: DateTime(2023, 9, 20),
  ),
  Activity(
    name: 'Debate Competition',
    description:
        'Inter-school debate competition for students to showcase their communication and critical thinking skills.',
    imageUrl:
        'https://lexpeeps.in/wp-content/uploads/2021/10/debate-competition-2-1024x682.jpg',
    date: DateTime(2023, 10, 15),
  ),
  Activity(
    name: 'School Play',
    description:
        'Dramatic production featuring students\' acting skills and theatrical performances.',
    imageUrl:
        'https://cf.ltkcdn.net/teens/images/orig/241909-1600x1030-short-plays-musicals-middle-school.jpg',
    date: DateTime(2023, 11, 10),
  ),
  Activity(
    name: 'Field Trip',
    description:
        'Educational outing to a museum, historical site, or natural landmark for students to explore and learn.',
    imageUrl: 'https://www.mdsci.org/wp-content/uploads/2018/04/DSC_0011.jpg',
    date: DateTime(2023, 12, 5),
  ),
  Activity(
    name: 'Community Service',
    description:
        'Volunteer work and service projects in the local community to promote social responsibility and empathy.',
    imageUrl:
        'https://www.signupgenius.com/cms/socialMediaImages/community-service-ideas.jpg',
    date: DateTime(2024, 1, 15),
  ),
  Activity(
    name: 'Science Olympiad',
    description:
        'Competition in various science disciplines to foster scientific knowledge and problem-solving skills among students.',
    imageUrl:
        'https://dxbhsrqyrr690.cloudfront.net/sidearm.nextgen.sites/farmhs.sidearmsports.com/images/2023/1/17/SSC2023-TeamPic.jpg',
    date: DateTime(2024, 1, 6),
  ),
  Activity(
    name: 'Book Fair',
    description:
        'Event where students can explore and purchase a wide range of books.',
    imageUrl:
        'https://i0.wp.com/evanstonroundtable.com/wp-content/uploads/2023/03/IMG_0925.jpeg?resize=721%2C540&ssl=1',
    date: DateTime(2024, 2, 10),
  ),
  Activity(
    name: 'Coding Competition',
    description:
        'Challenge where students can showcase their programming skills and problem-solving abilities.',
    imageUrl:
        'https://thejournal.com/-/media/EDU/THEJournal/2019-Images-Editorial/20190829CoderZcompetition.jpg',
    date: DateTime(2024, 3, 15),
  ),
  Activity(
    name: 'Talent Show',
    description:
        'Showcasing students\' talents in various performing arts, such as singing, dancing, and magic tricks.',
    imageUrl:
        'https://www.thehallenschool.net/wp-content/uploads/2020/06/TalentShow.png',
    date: DateTime(2024, 4, 20),
  ),
  Activity(
    name: 'Career Fair',
    description:
        'Exhibition of different careers and professions to help students explore potential future paths.',
    imageUrl:
        'https://4e1d785b97373c90507f-6b9273034d4843cbb42021f564454705.ssl.cf1.rackcdn.com/article/image/large_9426c1eb-c26e-442d-8d49-178467d5e266.jpg',
    date: DateTime(2024, 5, 10),
  ),
];

class ActivityScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Activities'),
      ),
      body: ListView.builder(
        itemCount: activities.length,
        itemBuilder: (context, index) {
          final activity = activities[index];

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                height: 200,
                width: double.infinity,
                child: Image.network(
                  activity.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              ListTile(
                title: Text(activity.name),
                subtitle: Text(activity.date.toString()),
                onTap: () {
                  // Navigate to activity details screen
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          ActivityDetailsScreen(activity: activity),
                    ),
                  );
                },
              ),
              Divider(), // Add a divider between each activity
            ],
          );
        },
      ),
    );
  }
}

class ActivityDetailsScreen extends StatelessWidget {
  final Activity activity;

  ActivityDetailsScreen({required this.activity});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Activity Details'),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                activity.imageUrl,
                height: 200,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      activity.name,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    Text(
                      activity.date.toString(),
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 8),
                    Text(
                      activity.description,
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () {
                        // Handle activity registration
                        // You can add your implementation here
                      },
                      child: Text('Register'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
