import 'dart:developer';

import 'package:flutter/material.dart';

class BlitzerListe extends StatefulWidget {
  static const routeName = 'blitzerliste';

  @override
  _BlitzerListeState createState() => _BlitzerListeState();
}

class _BlitzerListeState extends State<BlitzerListe> {
  @override
  Widget build(BuildContext context) {
    BlitzerItem number2 = BlitzerItem(
        "2", false, DateTime.now(), "Blitzer am Seepark!");
    BlitzerItem number1 = BlitzerItem(
        "1", false, DateTime.now(), "Blitzer am Seepark!");
    BlitzerItem number3 = BlitzerItem(
        "3", true, DateTime.now(), "Blitzer am Seepark!");
    BlitzerItem number4 = BlitzerItem(
        "4", false, DateTime.now(), "Blitzer am Seepark!");

    List<BlitzerItem> list = new List<BlitzerItem>();
    list.add(number1);
    list.add(number2);
    list.add(number3);
    list.add(number4);
    return Scaffold(
      appBar: AppBar(
        title: Text("Blitzerliste"),
      ),
      body: Container(
        child: ListView.builder(
            itemCount: list.length,
            itemBuilder: (context, index) {
              return BlitzerItem(
                  list[index].id,
                  list[index].expand,
                  list[index].blitzdate,
                  list[index].description);
            }),
      ),
    );
  }
}

// ignore: must_be_immutable
class BlitzerItem extends StatefulWidget {
  DateTime blitzdate;
  String id;
  String description;
  bool expand;

  BlitzerItem(id, expand, blitzdate, description) {
    this.blitzdate = blitzdate;
    this.id = id;
    this.expand = expand;
    this.description = description;
  }

  @override
  _BlitzerItemState createState() => _BlitzerItemState();
}

class _BlitzerItemState extends State<BlitzerItem> {
  @override
  Widget build(BuildContext context) {
    void setExpand(bool expand) {
      setState(() {
        this.widget.expand = expand;
      });
    }

    return ListTile(
      title: Text(this.widget.blitzdate.toString()),
      subtitle: Text(this.widget.description),
      leading: Text(this.widget.id),
      trailing: IconButton(
        icon: Icon(
          this.widget.expand
              ? Icons.expand_less
              : Icons.expand_more,
        ),
        onPressed: () {
          if (this.widget.expand) {
            setExpand(false);
          } else {
            setExpand(true);
          }
        },
      ),
    );
  }
}
