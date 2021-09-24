import 'package:flutter/material.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Projet",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Smart Dumbbell"),
        ),
        body: Center(
          child: Image(
            image: NetworkImage(
                "https://cdn.pixabay.com/photo/2017/01/09/11/30/dumbbell-1966247_960_720.jpg"),
          ),
        ),
      ),
      theme: ThemeData(primarySwatch: Colors.lightBlue),
    );
  }
}

class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
