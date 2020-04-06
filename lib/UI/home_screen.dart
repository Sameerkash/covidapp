import 'package:flutter/material.dart';
import '../data/models.dart';
import '../data/services.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future<Response> futureAlbum;

  @override
    void initState() {
    super.initState();
    futureAlbum = getPhotos();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('fgrfer'),
      ),
      body: FutureBuilder<Response>(
            future:futureAlbum,
        builder: (context, snapshot) {
          if (snapshot.hasError) print(snapshot.error);

          return snapshot.hasData
              ? Text(snapshot.data.data.regional.regions[0].loc
              //'hi'
              )
              : Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}


