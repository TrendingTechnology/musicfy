import 'package:fdb/ui/info/about.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings",),
        backgroundColor: Colors.transparent,
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text("Dark mode", style: TextStyle( fontSize: 20.0, fontWeight: FontWeight.bold),),
            leading: Icon(Icons.color_lens, size: 30.0,),
          ),
          ListTile(
            title: Text("Light mode", style: TextStyle( fontSize: 20.0, fontWeight: FontWeight.bold),),
            leading: Icon(Icons.color_lens,  size: 30.0,),
          ),
          ListTile(
            title: Text("About me", style: TextStyle( fontSize: 20.0, fontWeight: FontWeight.bold),),
            leading: Icon(Icons.info, size: 30.0, color: Color(0xff274d85),),
            onTap: navigateToAbout,
          ),
        ],
      ),
    );
  }
  void navigateToAbout(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => AboutMe()));
  }
}