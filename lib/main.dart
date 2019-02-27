import 'package:flutter/material.dart';
import 'package:workcontacts_app/components/contact_list.dart';
import 'package:workcontacts_app/components/my_appbar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Work Contacts',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: <Widget>[
            ContactList(),
            MyAppbar("Contacts")
          ],
        ),
      )
    );
  }
}
