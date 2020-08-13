import 'package:flutter/material.dart';

class Feed extends StatefulWidget {
  @override
  _FeedState createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  int _selectedIndex = 0;
  List<Widget> _pageWidget = <Widget>[
    Text('เพิ่มที่นาใหม่'),
    Text('ประเมินพันธุ์'),
    Text('การแจ้งเตือน'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => _pageWidget.elementAt(_selectedIndex)));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, i) {
          return Card(
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
                    title: Text('$i'),
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
          );
        },
        padding: EdgeInsets.all(10),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle),
            title: Text('เพิ่มที่นาใหม่'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event_available),
            title: Text('ประเมินพันธุ์'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notification_important),
            title: Text('การแจ้งเตือน'),
          ),
        ],
        selectedItemColor: Colors.grey,
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
