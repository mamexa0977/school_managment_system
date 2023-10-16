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
    name: 'Addis Ababa to Lalibela',
    description: 'Price: 1500',
    imageUrl:
        'https://c8.alamy.com/comp/HNMJT0/people-getting-into-a-taxi-arba-minch-ethiopia-HNMJT0.jpg',
    date: DateTime(2023, 6, 15),
  ),
  Activity(
    name: 'Bahir Dar to Gondar',
    description: 'Price: 1500',
    imageUrl:
        'https://c8.alamy.com/comp/HNMJT0/people-getting-into-a-taxi-arba-minch-ethiopia-HNMJT0.jpg',
    date: DateTime(2023, 6, 15),
  ),
  Activity(
    name: 'Axum to Lalibela',
    description: 'Price: 1500',
    imageUrl:
        'https://c8.alamy.com/comp/HNMJT0/people-getting-into-a-taxi-arba-minch-ethiopia-HNMJT0.jpg',
    date: DateTime(2023, 6, 15),
  ),
  Activity(
    name: 'Harar to Dire Dawa',
    description: 'Price: 1500',
    imageUrl:
        'https://c8.alamy.com/comp/HNMJT0/people-getting-into-a-taxi-arba-minch-ethiopia-HNMJT0.jpg',
    date: DateTime(2023, 6, 15),
  ),
  Activity(
    name: 'Danakil Depression to Mekele',
    description: 'Price: 1500',
    imageUrl:
        'https://c8.alamy.com/comp/HNMJT0/people-getting-into-a-taxi-arba-minch-ethiopia-HNMJT0.jpg',
    date: DateTime(2023, 6, 15),
  ),
  Activity(
    name: 'Simien Mountains to Axum',
    description: 'Price: 1500',
    imageUrl:
        'https://c8.alamy.com/comp/HNMJT0/people-getting-into-a-taxi-arba-minch-ethiopia-HNMJT0.jpg',
    date: DateTime(2023, 6, 15),
  ),
  Activity(
    name: 'Omo Valley to Jinka',
    description: 'Price: 1500',
    imageUrl:
        'https://c8.alamy.com/comp/HNMJT0/people-getting-into-a-taxi-arba-minch-ethiopia-HNMJT0.jpg',
    date: DateTime(2023, 6, 15),
  ),
  Activity(
    name: 'Bale Mountains to Arba Minch',
    description: 'Price: 1500',
    imageUrl:
        'https://c8.alamy.com/comp/HNMJT0/people-getting-into-a-taxi-arba-minch-ethiopia-HNMJT0.jpg',
    date: DateTime(2023, 6, 15),
  ),
  Activity(
    name: 'Awash National Park to Dire Dawa',
    description: 'Price: 1500',
    imageUrl:
        'https://c8.alamy.com/comp/HNMJT0/people-getting-into-a-taxi-arba-minch-ethiopia-HNMJT0.jpg',
    date: DateTime(2023, 6, 15),
  ),
  Activity(
    name: 'Lake Tana to Bahir Dar',
    description: 'Price: 1500',
    imageUrl:
        'https://c8.alamy.com/comp/HNMJT0/people-getting-into-a-taxi-arba-minch-ethiopia-HNMJT0.jpg',
    date: DateTime(2023, 6, 15),
  ),
];

class BusScreen extends StatelessWidget {
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
