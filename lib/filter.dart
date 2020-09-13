import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class filter extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => filterState();
}

class filterState extends State<filter> {
  TextEditingController _controller;
  String element;
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(40.0),
            child: AppBar(
              title: Center(
                  child: Text(
                'Food detective',
                style: TextStyle(fontSize: 20, color: Colors.white),
              )),
              backgroundColor: Colors.green,
            )),
        body: Container(
          margin: EdgeInsets.fromLTRB(50, 100, 50, 100),
          child: Center(
              child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  CircleAvatar(
                      backgroundColor: Colors.green,
                      child: Text(
                        '1',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )),
                  SizedBox(width: 10),
                  Text(
                    'What are you allergic to?',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              TextField(
                controller: _controller,
                onSubmitted: (String value) {
                  element = value;
                },
              ),
              SizedBox(height: 50),
              Row(
                children: <Widget>[
                  CircleAvatar(
                      backgroundColor: Colors.green,
                      child: Text(
                        '2',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )),
                  SizedBox(width: 10),
                  Text(
                    'Ingredients',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ],
          )),
        ));
  }
}
