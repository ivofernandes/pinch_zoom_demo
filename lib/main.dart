import 'package:flutter/material.dart';
import 'package:pinch_zoom_release_unzoom/pinch_zoom_release_unzoom.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Pinch zoom'),
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(10),
            child: Column(
              children: [
                Text('Example'),
                Container(
                  height: 150,
                ),
                Center(
                  child: PinchZoomReleaseUnzoomWidget(
                    fingersRequiredToPinch: -1,
                    child: Image.network(
                        'https://storage.googleapis.com/cms-storage-bucket/70760bf1e88b184bb1bc.png'),
                    zoomChild:
                        Container(height: 500, width: 500, color: Colors.red),
                  ),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.ac_unit_outlined), label: '1'),
            BottomNavigationBarItem(
                icon: Icon(Icons.access_alarm_rounded), label: '2')
          ],
        ),
      ),
    );
  }
}
