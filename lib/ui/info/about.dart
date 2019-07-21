import 'package:fdb/utils/my_flutter_app_icons.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: Container(
                child: Text(
                  "WHO AM I?",
                  style: TextStyle(
                    color: Color(0xFF274D85),
                    fontSize: 30.0,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 1.2,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ),
            Divider(
              height: 20.0,
              color: Colors.transparent,
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: ClipOval(
                    child: Image.asset(
                      "assets/mt.jpg",
                      height: 200.0,
                      width: 200.0,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Column(
                  children: <Widget>[
                    IconButton(
                      onPressed: () async{
                        if(await canLaunch("https://www.instagram.com/nittineditz/")){
                          await launch("https://www.instagram.com/nittineditz/");
                        }
                      },
                      icon: Icon(
                        MyFlutterApp.instagram,
                        size: 45.0,
                        color: Color(0xff3f729b),
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    IconButton(
                      onPressed: () async{
                        if(await canLaunch("https://www.youtube.com/channel/UCU7kFY0ZKYL66VjStbkAy7g")){
                          await launch("https://www.youtube.com/channel/UCU7kFY0ZKYL66VjStbkAy7g");
                        }
                      },
                      icon: Icon(
                        MyFlutterApp.youtube_play,
                        size: 45.0,
                        color: Color(0xffc4302b),
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    IconButton(
                      onPressed: () async{
                        if(await canLaunch("https://twitter.com/nittinsharma37")){
                          await launch("https://twitter.com/nittinsharma37");
                        }
                      },
                      icon: Icon(
                        MyFlutterApp.twitter,
                        size: 45.0,
                        color: Color(0xff00acee),
                      ),
                    ),
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                "I am Nittin Sharma a student, developer and designer based in billawar(jammu) India.\n\n Unlike every middle class guy my story is same and i belong to typical indian  village i have faced all that problems that a typical indian faces. Since 10th standard i have never used a computer. After 10th i grew up interest in computers. I worndered how all that stuff works and i started learning these things.\n\nAfter 12th i took admission in BCA course in college and currently i am pusruing this course.\n\n Apart from this course i have learned graphic designing, illustrations, editing from other sources. I am curious to learn everything in computers and i love computers and that's it",
                style: TextStyle(
                  fontSize: 18.0,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff565656),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}