import 'package:flutter/material.dart';

class Feed extends StatefulWidget {
  @override
  _FeedState createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(10),
        children: <Widget>[
          Card(
            child: Container(
              height: 300,
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  ListTile(
                    leading: Icon(
                      Icons.location_on,
                      size: 40,
                    ),
                    title: Text('Farm A'),
                    subtitle: Text('Date Month Year'),
                  ),
                  ListTile(
                    leading: Icon(Icons.check_circle),
                    title: Text('Activity 1'),
                  ),
                  ListTile(
                    leading: Icon(Icons.check_circle),
                    title: Text('Activity 2'),
                  ),
                  ListTile(
                    leading: Icon(Icons.check_circle),
                    title: Text('Activity 3'),
                  ),
                  ListTile(
                    leading: Icon(Icons.check_circle),
                    title: Text('Activity 4'),
                  ),
                ],
              ),
            ),
          ),
          Card(
            child: Container(
              height: 300,
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  ListTile(
                    leading: CircleAvatar(),
                    title: Text('นครนายก องครักษ์'),
                    subtitle: Text('02 สิงหาคม 2563'),
                  ),
                  ListTile(
                    leading: Icon(Icons.check_circle),
                    title: Text('ตรวจสอบการให้น้ำ ระดับน้ำ 3 ซม.'),
                  ),
                  ListTile(
                    leading: Icon(Icons.check_circle),
                    title: Text('กำจัดวัชพืช'),
                  ),
                  ListTile(
                    leading: Icon(Icons.check_circle),
                    title: Text('ตรวจสอบหอยเชอรี่และปูนา'),
                  ),
                  ListTile(
                    leading: Icon(Icons.check_circle),
                    title: Text('ตรวจสอบหนอนกระทู้กล้า'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle),
            title: Text('สร้างที่นาใหม่'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event_available),
            title: Text('ประเมิณพันธ์ข้าว'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            title: Text('แจ้งเตือน'),
          ),
        ],
      ),
    );
  }
}
