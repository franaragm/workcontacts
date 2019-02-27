import 'package:flutter/material.dart';
import 'package:workcontacts_app/components/contact.dart';

class ContactList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(top: 80, left: 10.0, right: 10.0),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Contact("Fran Aragon", "http://i.pravatar.cc/4", "Frontend & mobile developer with Flutter Angular Redux ", 'fran@aragon.net'),
          Contact("Lord Ran", "http://i.pravatar.cc/9", "Backend Developer Symfony and Laravel, MongoDB, ElasticSearch", ''),
          Contact("Fran Aragon", "http://i.pravatar.cc/4", "Frontend & mobile developer with Flutter Angular Redux ", 'fran@aragon.net'),
          Contact("Lord Ran", "http://i.pravatar.cc/9", "Backend Developer Symfony and Laravel, MongoDB, ElasticSearch", ''),
          Contact("Fran Aragon", "http://i.pravatar.cc/4", "Frontend & mobile developer with Flutter Angular Redux ", 'fran@aragon.net'),
          Contact("Lord Ran", "http://i.pravatar.cc/9", "Backend Developer Symfony and Laravel, MongoDB, ElasticSearch", ''),
          Contact("Fran Aragon", "http://i.pravatar.cc/4", "Frontend & mobile developer with Flutter Angular Redux ", 'fran@aragon.net'),
          Contact("Lord Ran", "http://i.pravatar.cc/9", "Backend Developer Symfony and Laravel, MongoDB, ElasticSearch", ''),
          Contact("Fran Aragon", "http://i.pravatar.cc/4", "Frontend & mobile developer with Flutter Angular Redux ", 'fran@aragon.net'),
          Contact("Lord Ran", "http://i.pravatar.cc/9", "Backend Developer Symfony and Laravel, MongoDB, ElasticSearch", ''),
          Contact("Fran Aragon", "http://i.pravatar.cc/4", "Frontend & mobile developer with Flutter Angular Redux ", 'fran@aragon.net'),
          Contact("Lord Ran", "http://i.pravatar.cc/9", "Backend Developer Symfony and Laravel, MongoDB, ElasticSearch", ''),
        ],
      ),
    );
  }

}