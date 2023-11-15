import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  void signout() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('For Test'),
        centerTitle: true,
        actions: [IconButton(onPressed: signout, icon: Icon(Icons.logout))],
      ),
      body: const Center(
        child: Text(
          'Home Screen',
          style: TextStyle(color: Colors.black, fontSize: 26),
        ),
      ),
    );
  }
}
