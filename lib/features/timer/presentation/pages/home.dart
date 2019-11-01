import 'package:flutter/material.dart';
import 'package:flutter_achiver/features/auth/presentation/notifiers/user_repository.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Timer Home'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            RaisedButton(
              child: Text("Log Out"),
              onPressed: () => Provider.of<UserRepository>(context).signOut(),
            )
          ],
        ),
      ),
    );
  }
}