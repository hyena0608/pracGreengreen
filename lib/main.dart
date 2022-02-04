import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:greengreen_test/screen/result_screen.dart';
import 'package:greengreen_test/widget/map_sample.dart';
// import 'package:social_share/social_share.dart';
// import 'package:screenshot/screenshot.dart';
// import 'package:path_provider/path_provider.dart';



void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  // ScreenshotController screenshotController = ScreenshotController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '초록초록',
      theme: ThemeData(brightness: Brightness.light),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          body: TabBarView(children: [
            ResultScreen(),
            MapSample(),
            /** social_share */
            Container(
              // child: Screenshot(
              //     controller: screenshotController,
              //     child: RaisedButton(
              //       onPressed: () async {
              //         await screenshotController.capture().then((image) async {
              //           final directory = await getApplicationDocumentsDirectory();
              //           final file = await File('${directory.path}/temp.png').create();
              //           await file.writeAsBytes(image);
              //
              //           SocialShare.shareInstagramStory(
              //             file.path,
              //             backgroundTopColor: "#ffffff",
              //             backgroundBottomColor: "#000000",
              //             attributionURL: "https://deep-link-url",
              //             backgroundImagePath: file.path,
              //           ).then((data) {
              //             print(data);
              //           });
              //         });
              //       },
              //       child: Text("Share On Instagram Story with background"),
              //     ),
              // ),

            ),Container(
              child: Center(
                child: Text('4 페이지'),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
