import 'package:flutter/material.dart';
import 'package:personal_attempt/signup.dart';

class NewRide extends StatefulWidget {
  const NewRide({super.key});

  @override
  State<NewRide> createState() => _NewRideState();
}

class _NewRideState extends State<NewRide> {
  String? starting;
  String? ending;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create a new ride'),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/Downtown-1.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 5),
                Container(
                  color: Colors.blueAccent,
                  child: Row(
                    children: [
                      Text('Name(optional):'),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'enter name of the ride',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  color: Colors.blue,
                  child: DropdownButton<String>(
                    dropdownColor: Colors.blue,
                    value: starting,
                    hint: Text(
                      "Choose starting point",
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    items: [
                      DropdownMenuItem(value: "Mina", child: Text("Mina ")),
                      DropdownMenuItem(
                        value: "Abu samra",
                        // child: Container(
                        //   height: double.infinity,
                        //   width: double.infinity,
                        //   color: Colors.blueAccent,
                        //   child:
                        child: Text("Abu Samra "),
                      ),

                      DropdownMenuItem(value: "Tal", child: Text("Tal ")),
                      DropdownMenuItem(
                        value: "Seht el nour",
                        child: Text("Seht el nour"),
                      ),
                    ],
                    onChanged: (value) {
                      setState(() {
                        starting = value!;
                      });
                    },
                  ),
                ),
                SizedBox(height: 8),
                Container(
                  color: Colors.blue,
                  child: DropdownButton<String>(
                    dropdownColor: Colors.blue,

                    value: ending,

                    hint: Text(
                      "Choose destination point",
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    items: [
                      DropdownMenuItem(value: "Mina", child: Text("Mina ")),
                      DropdownMenuItem(
                        value: "Abu samra",
                        child: Text("Abu Samra "),
                      ),
                      DropdownMenuItem(value: "Tal", child: Text("Tal ")),
                      DropdownMenuItem(
                        value: "Seht el nour",
                        child: Text("Seht el nour"),
                      ),
                    ],
                    onChanged: (value) {
                      setState(() {
                        ending = value!;
                      });
                    },
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    switchScreen(context, 'mainScreen');
                  },
                  child: Text('save ride'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
