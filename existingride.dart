import 'package:flutter/material.dart';
import 'package:personal_attempt/signup.dart';

class ExistingRide extends StatefulWidget {
  const ExistingRide({super.key});

  @override
  State<ExistingRide> createState() => _ExistingRideState();
}

String gym = 'GYM';
String work = 'WORK';
String ttm = 'TAL to MINA';
String college = 'COLLEGE';

class _ExistingRideState extends State<ExistingRide> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('choose from existing rides'),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              'https://media-cdn.tripadvisor.com/media/attractions-splice-spp-720x480/0b/18/ca/30.jpg',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    switchScreen(context, 'er', gym);
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
                            gym,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                InkWell(
                  onTap: () {
                    switchScreen(context, 'er', work);
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
                            work,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),

                InkWell(
                  onTap: () {
                    switchScreen(context, 'er', ttm);
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
                            ttm,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),

                InkWell(
                  onTap: () {
                    switchScreen(context, 'er', college);
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
                            college,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                            ),
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
      ),
    );
  }
}
