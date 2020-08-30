import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:spotify_clone/Screen/HomeScreen.dart';
import 'package:spotify_clone/Screen/Search.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spotify Clone',
      theme: ThemeData.dark(),
      home: MyHomePage(title: 'Spotify Clone APp'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  Widget _widgetBody = HomeScreen();
  int _currrentIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  void _onItemTapped(int index) async{
    setState(() {
      if(index == 0){
        _currrentIndex = index;
        _widgetBody = HomeScreen();
      }
      else if(index == 1){
        _currrentIndex = index;
        _widgetBody = SearchScreen();
      }
      else if(index == 2){
        _currrentIndex = index;
        _widgetBody = Center(child: Text('Hell'),);
      }
      else if(index == 3){
        _currrentIndex = index;
        _widgetBody = Center(child: Text('Hell'),);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        decoration: new BoxDecoration(
            gradient: new LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.centerRight,
              colors: [
                Color(0XFF383333),
                Colors.black54,
                Colors.black54,
              ],
            )),
        child: _widgetBody,
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.grey[900],
        ),
        child: BottomNavigationBar(
          currentIndex: _currrentIndex,
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.white,
          onTap: _onItemTapped,
          items: [
            BottomNavigationBarItem(
                icon: _currrentIndex==0?Icon(Icons.home, size: 25):Icon(Icons.home_outlined, size: 25),
                title: Text("Home")
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.search_outlined, size: 25),
                title: Text("Search")
            ),
            BottomNavigationBarItem(
                icon: _currrentIndex==2?Icon(Icons.library_music, size: 25):Icon(Icons.library_music_outlined, size: 25),
                title: Text("Library")
            ),
            BottomNavigationBarItem(
                icon: Icon(MdiIcons.spotify, size: 25),
                title: Text("Premium")
            ),
          ],
        ),
      ),
    );
  }
}
