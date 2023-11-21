


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  @override
  _HomePage createState() =>_HomePage();


}

class _HomePage extends State<HomePage>{

  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: _appBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Welcome to VoteInsta',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Navigate to the sign-in screen
              Navigator.pushNamed(context, 'login');
            },
            child: Text('Sign In'),
          ),
          ElevatedButton(
            onPressed: () {
              // Navigate to the registration screen
              Navigator.pushNamed(context, 'register');
            },
            child: Text('Register'),
          ),
          SizedBox(height: 20),
          Text(
            'List of Polls',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          // Add a list of polls here
        ],
      ),
    );
  }

  AppBar _appBar(){
    return AppBar(

    );
  }

}