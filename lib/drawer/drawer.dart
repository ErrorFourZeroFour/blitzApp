import 'package:flutter/material.dart';

class MainDrawer extends StatefulWidget {
  static const String routeName = "drawer";

  @override
  _MainDrawerState createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      width: 300,
      child: ListView.builder(
          itemCount: 3,
          itemBuilder: (item, ctx) {
            return ListTile(
              trailing: Icon(
                Icons.access_alarm,
                color: Colors.white,
              ),
              onTap: () {
                Navigator.of(context).pop();
              },
              title: Text(
                "Bist du Müde?",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            );
          }),
    );
  }
}
