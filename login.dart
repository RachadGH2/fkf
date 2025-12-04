import 'package:flutter/material.dart';
import 'package:personal_attempt/signup.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});
  @override
  State<LogIn> createState() => _SignInState();
}

// Widget activeScreen = LogIn();

class _SignInState extends State<LogIn> {
  // void switchScreen(BuildContext ctx, String passed) {
  //   Navigator.of(ctx).push(
  //     MaterialPageRoute(
  //       builder: (_) {
  //         switch (passed) {
  //           case 'mainScreen':
  //             activeScreen = Mainscreen();

  //             break;
  //           default:
  //         }
  //         return activeScreen;
  //       },
  //     ),
  //   );
  // }

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
                Text('Sign in', style: TextStyle(fontSize: 27)),
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
                SizedBox(height: 10),

                ElevatedButton(
                  onPressed: () {
                    switchScreen(context, 'mainScreen');
                  },
                  child: Text('Sign in'),
                ),
                SizedBox(height: 7),
                TextButton(
                  onPressed: () {
                    switchScreen(context, 'signup');
                  },
                  child: Text(
                    'don\'t  have a account?Sign in',
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
