import 'package:flutter/material.dart';
import 'package:spotify_clone/Model/Song.dart';
import 'package:spotify_clone/Screen/Home.dart';

void main() {
  runApp(SongCoverWidget());
}

class SongCoverWidget extends StatelessWidget {
  // This widget is the root of your application.
  SongCoverWidget({Key key, this.width, this.height, this.song}) : super(key: key);
  double width;
  double height;
  Song song;
  @override
  Widget build(BuildContext context) {
    return SongCoverWidgetPage(width: width,height: height,song: song,);
  }
}

class SongCoverWidgetPage extends StatefulWidget {
  SongCoverWidgetPage({Key key, this.title, this.width, this.height, this.song}) : super(key: key);

  final String title;
  double width;
  double height;
  Song song;
  @override
  _SongCoverWidgetState createState() => _SongCoverWidgetState();
}

class _SongCoverWidgetState extends State<SongCoverWidgetPage> {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: widget.height!=null?widget.height:170.0,
            width: widget.width!=null?widget.width:160.0,
            child: Image.network(
              widget.song.coverImage,
              fit: BoxFit.fitHeight,
            ),

          ),
          Padding(padding: EdgeInsets.all(5.0)),
          Container(
            width: 150,
            height: 35,
            child: Text(widget.song.caption,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: TextStyle(
                color: Colors.white.withOpacity(1.0),
                fontFamily: 'SpotifyFont',
                fontSize: 15.0,
              ),
            ),
          )
        ],
      ),
    );
  }
}
