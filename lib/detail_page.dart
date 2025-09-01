import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  List<Map<String, dynamic>> get skills => [
    {'label': 'HTML', 'color': Colors.orange[100]},
    {'label': 'CSS', 'color': Colors.blue[100]},
    {'label': 'JavaScript', 'color': Colors.yellow[100]},
    {'label': 'Tailwind', 'color': Colors.teal[100]},
    {'label': 'Flutter', 'color': Colors.blue[200]},
    {'label': 'PHP', 'color': Colors.purple[100]},
    {'label': 'Laravel', 'color': Colors.red[100]},
    {'label': 'Bootstrap', 'color': Colors.pink[100]},
    {'label': 'PostgreSQL', 'color': Colors.green[100]},
    {'label': 'MySQL', 'color': Colors.indigo[100]},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 70.0,
                backgroundImage: AssetImage('assets/profile.png'),
              ),
              SizedBox(height: 16.0),
              Text(
                'Muhamad Rafif',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.0),

              // About
              Center(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Card(
                    shadowColor: Colors.black,
                    elevation: 3.0,
                    color: Colors.amber[200],
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'About',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            'Saya Muhamad Rafif, seorang pengembang perangkat lunak yang memiliki minat besar dalam teknologi dan pemrograman.',
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16.0),

              // History
              Center(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Card(
                    elevation: 3.0,
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'History',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16.0),

              // Skill
              Center(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Card(
                    color: Colors.amber[200],
                    elevation: 3.0,
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Skill',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8.0),
                          Wrap(
                            spacing: 8.0,
                            runSpacing: 8.0,
                            children: [
                              ...skills.map((skill) => Chip(
                                    label: Text(
                                      skill['label']!,
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    backgroundColor: skill['color'],
                                  )),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
