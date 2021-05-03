import 'package:flutter/material.dart';

class BlitzerListe extends StatefulWidget {
  static const routeName = 'blitzerliste';

  @override
  _BlitzerListeState createState() => _BlitzerListeState();
}

class _BlitzerListeState extends State<BlitzerListe> {
  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    final List<BlitzerItem> list = new List<BlitzerItem>();
    list.add(BlitzerItem(
        "2", false, DateTime.now(), "Blitzer am Seepark!"));
    list.add(BlitzerItem(
        "1", false, DateTime.now(), "Blitzer am Seepark!"));
    list.add(BlitzerItem(
        "3", true, DateTime.now(), "Blitzer am Seepark!"));
    list.add(BlitzerItem(
        "4", false, DateTime.now(), "Blitzer am Seepark!"));

    return Scaffold(
      appBar: AppBar(
        title: const Text("Blitzerliste"),
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

  // ignore: avoid_positional_boolean_parameters
  BlitzerItem(this.id, this.expand, this.blitzdate,
      this.description);

  @override
  _BlitzerItemState createState() => _BlitzerItemState();
}

class _BlitzerItemState extends State<BlitzerItem> {
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_positional_boolean_parameters
    void setExpand(bool expand) {
      setState(() {
        widget.expand = expand;
      });
    }

    return ListTile(
      title: Text(widget.blitzdate.toString()),
      subtitle: Text(widget.description),
      leading: Text(widget.id),
      trailing: IconButton(
        icon: Icon(
          widget.expand
              ? Icons.expand_less
              : Icons.expand_more,
        ),
        onPressed: () {
          if (widget.expand) {
            setExpand(false);
          } else {
            setExpand(true);
          }
        },
      ),
    );
  }
}
