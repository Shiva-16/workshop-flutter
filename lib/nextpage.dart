import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class NextPage extends StatefulWidget {
  @override
  _NextPageState createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  get emailController => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        SizedBox(height: 350),
        TextField(
          textAlign: TextAlign.center,
          decoration: InputDecoration(
              border: InputBorder.none, hintText: 'Enter a search term'),
        ),
        TextField(
          controller: emailController,
          obscureText: true,
          textAlign: TextAlign.left,
          decoration: InputDecoration(
            focusedErrorBorder: InputBorder.none,
            hintText: 'PLEASE ENTER YOUR EMAIL',
            hintStyle: TextStyle(color: Colors.grey),
          ),
        ),
        RaisedButton(
          onPressed: () {
            Fluttertoast.showToast(
                msg: "This is Center Short Toast",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.CENTER,
                timeInSecForIos: 1,
                backgroundColor: Colors.red,
                textColor: Colors.white,
                fontSize: 16.0);
          },
          child: Text("Press"),
          color: Colors.yellowAccent,
        )
      ],
    ));
  }
}
