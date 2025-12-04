import 'package:flutter/material.dart';

class Salt extends StatefulWidget {
  const Salt({super.key});
  @override
  State<Salt> createState() => _SaltState();
}

// String inside = 'ride not available right now,estimated wait:15 minutes';

class _SaltState extends State<Salt> {
  int c = 0;
  String original = 'check';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Same as last time? "),
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              'https://d34vm3j4h7f97z.cloudfront.net/optimized/3X/3/3/331a015d0134063212c8dc849a6a050e1a6ec702_2_697x750.jpeg',
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
                  color: Colors.blueAccent,
                  child: Text(
                    'Last time you went from AbuSamra to Mina,check if this ride is available again?',
                    style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (c == 0) {
                        original =
                            'ride not available right now, next ride in 15 minutes';
                        c++;
                      } else if (c == 1) {
                        original = 'check';
                        c++;
                      } else if (c == 2) {
                        original = 'ride reserved ';
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
