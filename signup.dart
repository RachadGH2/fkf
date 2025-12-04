import 'package:flutter/material.dart';
import 'package:personal_attempt/er.dart';
import 'package:personal_attempt/existingride.dart';
import 'package:personal_attempt/login.dart';
import 'package:personal_attempt/mainScreen.dart';
import 'package:personal_attempt/newride.dart';
import 'package:personal_attempt/salt.dart';
import 'package:personal_attempt/why.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trust ride'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: SizedBox(
          width: 400,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRplzm9f6S2ybLzKsn19qP-dLmPJGOAtDRRDA&s',
                  height: 220,
                  width: 220,
                ),
                Text('Sign Up', style: TextStyle(fontSize: 27)),
                //Icons.verified_user,
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Full name',
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    prefixIcon: Icon(Icons.email),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Password',
                    prefixIcon: Icon(Icons.password),
                  ),
                  keyboardType: TextInputType.visiblePassword,
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Repeat Password',
                    prefixIcon: Icon(Icons.password),
                  ),
                  keyboardType: TextInputType.visiblePassword,
                ),
                SizedBox(height: 10),

                ElevatedButton(
                  onPressed: () {
                    switchScreen(context, 'mainScreen');
                  },
                  child: Text('Sign up'),
                ),
                SizedBox(height: 7),
                TextButton(
                  onPressed: () {
                    switchScreen(context, 'login');
                  },
                  child: Text(
                    'already have a account?Sign in',
                    style: TextStyle(color: Colors.blueAccent),
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

// Widget activeScreen = LogIn();

void switchScreen(BuildContext ctx, String passed, [String? pass]) {
  Navigator.of(ctx).push(
    MaterialPageRoute(
      builder: (_) {
        switch (passed) {
          case 'mainScreen':
            return Mainscreen();
          case 'login':
            return LogIn();

          case 'signup':
            return SignUp();

          case 'salt':
            return Salt();
          case 'newride':
            return NewRide();
          case 'existingride':
            return ExistingRide();
          case 'er':
            return ER(info: pass);
          case 'why':
            return Why();
          default:
            return SignUp();
        }
      },
    ),
  );
}
