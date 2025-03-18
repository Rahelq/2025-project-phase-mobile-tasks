import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: ""),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Greeting Section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Maya Ramon,\nGood Morning 🌞",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.notifications, size: 30),
                ],
              ),
              SizedBox(height: 20),

              // Sleep Notification Card
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        "You have slept **09:30** that is above your recommendation",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    Icon(Icons.close, color: Colors.white),
                  ],
                ),
              ),
              SizedBox(height: 20),

              // Sleep Calendar Section
              Text(
                "Your Sleep Calendar",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: List.generate(
                  6,
                  (index) => Column(
                    children: [
                      Text(
                        ["Tue", "Wed", "Thu", "Fri", "Sat", "Sun"][index],
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: 5),
                      CircleAvatar(
                        backgroundColor:
                            index == 2 ? Colors.blue : Colors.grey[300],
                        child: Text("${22 + index}"),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),

              // Bedtime & Alarm Cards
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SleepInfoCard(
                    icon: Icons.bed,
                    title: "Bed time",
                    time: "7H and 28Min",
                  ),
                  SleepInfoCard(
                    icon: Icons.alarm,
                    title: "Alarm",
                    time: "16H and 18Min",
                  ),
                ],
              ),
              SizedBox(height: 20),

              // Help Section
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.purple[100],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Have a problem\nSleeping?",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("Consult an expert"),
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

// Custom Widget for Sleep Info Cards
class SleepInfoCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String time;

  SleepInfoCard({required this.icon, required this.title, required this.time});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      width: 150,
      decoration: BoxDecoration(
        color: Colors.purple[50],
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Icon(icon, size: 30, color: Colors.purple),
          SizedBox(height: 10),
          Text(
            title,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Text(time, style: TextStyle(fontSize: 14)),
          Switch(value: true, onChanged: (val) {}),
        ],
      ),
    );
  }
}
