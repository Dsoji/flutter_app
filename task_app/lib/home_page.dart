import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  _HomeState createState() {
    return _HomeState();
  }
}

class _HomeState extends State<HomePage> {
  final fieldText = TextEditingController();
  String data = '';
  String preview = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Text(
            'Home',
            style: TextStyle(
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        elevation: 0,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: IconButton(
              icon: Icon(Icons.refresh, size: 30),
              onPressed: () {
                fieldText.clear();
                setState(() {
                  data = '';
                  preview = '';
                });
              },
            ),
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              color: Colors.white12,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 60.0),
                    child: Container(
                      width: 200,
                      height: 150,
                      child: Image.asset('assets/download.png'),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Text(
                      "What do you want to say?",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: TextField(
                      controller: fieldText,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Your Text',
                          hintText: 'Type here...'),
                      onChanged: (value) {
                        setState(() {
                          data = value;
                        });
                      },
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        setState(() {
                          preview = data;
                        });
                      },
                      child: Text(
                        'Preview',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      )),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: 300,
                    child: Text(
                      preview,
                      style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
