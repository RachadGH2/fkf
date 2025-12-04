import 'package:flutter/material.dart';

class Why extends StatefulWidget {
  const Why({super.key});

  @override
  State<Why> createState() => _WhyState();
}

class _WhyState extends State<Why> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tripoli’s Safest Way Around.',
          style: TextStyle(fontSize: 19),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/20161006_105644.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Card(
              color: Colors.blueAccent,
              child: Text(
                'Why Trust Ride?',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
              ),
            ),
            Expanded(
              child: Card(
                color: Colors.blueAccent,
                child: Text(
                  '1-All rides on Trust Ride are fully verified by the Ministry— every driver is logged in, every vehicle is trusted.',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              color: Colors.green,
              child: Icon(Icons.check, color: Colors.white, size: 50),
            ),
            SizedBox(height: 35),
            Expanded(
              child: Card(
                color: Colors.blueAccent,
                child: Text(
                  '2-Your journey is live-tracked on the Ministry’s GPS system, so you always know where your taxi is and how long it will take to arrive',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Image.network(
              'https://static.vecteezy.com/system/resources/previews/015/411/397/non_2x/yellow-taxi-car-front-view-taxi-mobile-ordering-service-app-concept-smartphone-with-geotag-gps-location-pin-on-city-map-illustration-vector.jpg',
              height: 110,
              width: 110,
            ),
            SizedBox(height: 35),

            Expanded(
              child: Card(
                color: Colors.blueAccent,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    '3-Receive accurate wait times before booking,plan your day without surprises.',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Image.network(
              'https://cdn.vectorstock.com/i/500p/88/10/fast-delivery-time-service-logo-vector-21158810.jpg',
              height: 110,
              width: 110,
            ),
          ],
        ),
      ),
    );
  }
}
