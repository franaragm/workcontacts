import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  String contactName = "Name Surname";
  String urlImageAvatar = "http://i.pravatar.cc/300";
  String contactDesc = "Designer UI UX Flutter Angular";
  String contactEmail = '';

  Contact(this.contactName, this.urlImageAvatar, this.contactDesc,
      this.contactEmail);

  @override
  Widget build(BuildContext context) {
    final avatar = Container(
      margin: EdgeInsets.only(right: 10.0),
      child: CircleAvatar(
        radius: 30,
        backgroundImage: NetworkImage(urlImageAvatar),
      ),
    );

    final nameText = Container(
      margin: EdgeInsets.only(bottom: 3.0),
      child: Text(
        contactName,
        style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
      ),
    );

    final descText = Container(
      margin: EdgeInsets.only(),
      width: 240,
      child: Text(contactDesc),
    );

    final contactDetails = Container(
      margin: EdgeInsets.only(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[nameText, descText],
      ),
    );

    final contactGroup = Container(
      child: Row(
        children: <Widget>[avatar, contactDetails],
      ),
    );

    final emailButton = Container(
        margin: EdgeInsets.only(),
        child: CircleAvatar(
            backgroundColor: getColor('bg'),
            radius: 25.0,
            child: IconButton(
                icon: Icon(Icons.mail),
                color: getColor('icon'),
                onPressed: () {
                  if (contactEmail != '') {
                    Scaffold.of(context)
                        .showSnackBar(SnackBar(content: Text(contactEmail)));
                  }
                })));

    return Card(
        child: Container(
            padding: new EdgeInsets.all(10.0),
            margin: EdgeInsets.only(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[contactGroup, emailButton],
            )
        )
    );
  }

  Color getColor(String type) {
    if (type == 'icon') {
      if (contactEmail != '') {
        return Colors.white;
      } else {
        return Colors.black12;
      }
    } else {
      if (contactEmail != '') {
        return Colors.lightBlue;
      } else {
        return Colors.grey;
      }
    }
  }
}
