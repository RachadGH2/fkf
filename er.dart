import 'package:flutter/material.dart';

class ER extends StatefulWidget {
  const ER({super.key, this.info});
  final String? info;
  @override
  State<ER> createState() => _ERState();
}

String name = 'GYM';

class _ERState extends State<ER> {
  int c = 0;
  String original = 'check availability?';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('request this ride?'),
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
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: Colors.cyan,
                  child: Text(
                    'check if the ride ${widget.info} is available?',
                    style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (c == 0) {
                        original = 'ride reserved';
                        c++;
                      } else if (c == 1) {
                        original = 'check availability?';
                        c++;
                      } else if (c == 2) {
                        original =
                            'ride not available right now, next ride in 15 minutes ';
                      }
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    foregroundColor: Colors.black,
                  ),
                  child: Text(original),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
