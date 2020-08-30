import 'package:flutter/material.dart';
import 'package:spotify_clone/Screen/Home.dart';
import 'package:spotify_clone/Widget/Genere.dart';

void main() {
  runApp(SearchScreen());
}

class SearchScreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return SearchScreenPage();
  }
}

class SearchScreenPage extends StatefulWidget {
  SearchScreenPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreenPage> {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Color(0xFF414345),
          Color(0xFF000000),
        ], begin: Alignment.topLeft, end: FractionalOffset(0.2, 0.7)),
      ),
      child: ListView(
        children: <Widget>[
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: <Widget>[
                Padding(padding: EdgeInsets.all(30.0),),
                Container(
                  child: Text('Search',
                    style: TextStyle(
                      color: Colors.white.withOpacity(1.0),
                      fontFamily: 'SpotifyFont',
                      fontWeight: FontWeight.w500,
                      fontSize: 50.0,
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.all(10.0),),
                Container(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                    clipBehavior: Clip.antiAlias,
                    child: Container(
                      height: 50.0,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.white,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Padding(padding: EdgeInsets.only(left:10),),
                          Icon(Icons.search,color: Colors.black,),
                          Padding(padding: EdgeInsets.all(5),),
                          Text('Artists, ',style: TextStyle(color: Colors.black,fontSize: 20.0, fontWeight: FontWeight.bold),),
                          Text('songs or',style: TextStyle(color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.bold),),
                          Text(' podcasts',style: TextStyle(color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Your top genres ',style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),),
                          GridView.builder(
                            itemCount: 2,
                            gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                            shrinkWrap: true,
                            controller: ScrollController(keepScrollOffset: false),
                            itemBuilder: (BuildContext context, int index){
                              return GenereWidget();
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Browse all',style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),),
                          GridView.builder(
                            itemCount: 18,
                            gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                            shrinkWrap: true,
                            controller: ScrollController(keepScrollOffset: false),
                            itemBuilder: (BuildContext context, int index){
                              return GenereWidget();
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
