import 'package:flutter/material.dart';
import 'package:spotify_clone/Screen/Home.dart';

void main() {
  runApp(GenereWidget());
}

class GenereWidget extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GenereWidgetPage();
  }
}

class GenereWidgetPage extends StatefulWidget {
  GenereWidgetPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _GenereWidgetPageState createState() => _GenereWidgetPageState();
}

class _GenereWidgetPageState extends State<GenereWidgetPage> {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridTile(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Container(
            height: 10,
            child: Card(
              margin: EdgeInsets.symmetric(vertical: 30.0, horizontal: 0),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
              clipBehavior: Clip.antiAlias,
            ),
          ),
        ),
      )
    );
  }
}
