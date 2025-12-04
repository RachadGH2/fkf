// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:personal_attempt/salt.dart';
import 'signup.dart';

class Mainscreen extends StatefulWidget {
  const Mainscreen({super.key});

  @override
  State<Mainscreen> createState() => _MainscreenState();
}

class _MainscreenState extends State<Mainscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trust ride'),
        backgroundColor: Colors.lightBlueAccent,
      ),

      drawer: Drawer(
        backgroundColor: Colors.lightBlue,
        child: ListView(
          children: [
            ListTile(
              tileColor: Colors.blue,
              title: Text(
                'Profile',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('view/edit your profile'),
              trailing: Icon(Icons.arrow_back_sharp),
              onTap: () {},
              // selectScreen,
            ),
            SizedBox(height: 2),
            ListTile(
              tileColor: Colors.blue,
              title: Text(
                'Ride History',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('See your recent rides'),
              trailing: Icon(Icons.arrow_back_sharp),
              onTap: () {},
              //  switchScreen(){},
            ),
            SizedBox(height: 2),

            ListTile(
              tileColor: Colors.blue,
              title: Text(
                'Saved Rides',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('manage your saved rides,add,edit and delete'),
              trailing: Icon(Icons.arrow_back_sharp),
              onTap: () {},
            ),
            SizedBox(height: 2),

            ListTile(
              tileColor: Colors.blue,
              title: Text(
                'Dark mode',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('Toggle dark theme'),
              trailing: Icon(Icons.arrow_back_sharp),
              onTap: () {
                switchScreen(context, 'login');
              },
            ),
            SizedBox(height: 2),

            ListTile(
              tileColor: Colors.blue,
              title: Text(
                'Log out',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              // subtitle: Text('view/edit your profile'),
              trailing: Icon(Icons.arrow_back_sharp),
              onTap: () {
                switchScreen(context, 'login');
              },
            ),
            SizedBox(height: 2),
          ],
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/Downtown-20.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => Salt(),
                    ), // directly push Salt
                  );
                },
                child: Card(
                  color: Colors.lightBlueAccent,
                  shadowColor: Colors.blueGrey,
                  elevation: 10,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Same as last time?',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 3,
                        ),
                        child: Text(
                          'check if a ride from Abu samra to mina is available',
                          style: TextStyle(fontSize: 13),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 46),
              InkWell(
                onTap: () {
                  switchScreen(context, 'newride');
                },
                child: Card(
                  color: Colors.lightBlueAccent,
                  shadowColor: Colors.blueGrey,
                  elevation: 10,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'New Ride',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 3,
                        ),
                        child: Text(
                          'create a new ride with a specific origin and destination',
                          style: TextStyle(fontSize: 13),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 46),
              InkWell(
                onTap: () {
                  switchScreen(context, 'existingride');
                },
                child: Card(
                  color: Colors.lightBlueAccent,
                  shadowColor: Colors.blueGrey,
                  elevation: 10,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Existing Ride',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 3,
                        ),
                        child: Text(
                          '     pick a ride from your saved rides,ready to go      ',
                          style: TextStyle(fontSize: 13),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 46),

              InkWell(
                onTap: () {
                  switchScreen(context, 'why');
                },
                child: Card(
                  color: Colors.lightBlueAccent,
                  shadowColor: Colors.blueGrey,
                  elevation: 10,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Why trust ride?',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 3,
                        ),
                        child: Text(
                          'why is Trust Ride the safest way to get around in lebanon today?',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 13),
                        ),
                      ),
                    ],
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
