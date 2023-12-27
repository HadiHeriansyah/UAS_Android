import 'package:aaaaa/login_page.dart';
import 'package:flutter/material.dart';
import 'header_drawer.dart';
import 'ProfileScreen.dart';
import 'login_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Home Page"),
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const MyHeaderDrawer(),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text("Beranda"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.people),
                title: const Text("Profile"),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProfileScreen()));
                },
              ),
              ListTile(
                leading: const Icon(Icons.logout, color: Colors.red),
                title: const Text("Log Out"),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()));
                },
              ),
            ],
          ),
        ),
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(25),
        crossAxisCount: 2,
        children: <Widget>[
          Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: () {},
              splashColor: Colors.blue,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Icon(
                      Icons.home,
                      size: 70,
                      color: Colors.blueAccent,
                    ),
                    Text("Home", style: TextStyle(fontSize: 17.0)),
                  ],
                ),
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProfileScreen()));
              },
              splashColor: Colors.blue,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Icon(
                      Icons.people,
                      size: 70,
                      color: Colors.redAccent,
                    ),
                    Text("Profile", style: TextStyle(fontSize: 17.0)),
                  ],
                ),
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: () {},
              splashColor: Colors.blue,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Icon(
                      Icons.music_note,
                      size: 70,
                      color: Colors.yellowAccent,
                    ),
                    Text("Musik", style: TextStyle(fontSize: 17.0)),
                  ],
                ),
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginPage()));
              },
              splashColor: Colors.blue,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Icon(
                      Icons.logout,
                      size: 70,
                      color: Colors.red,
                    ),
                    Text("LogOut", style: TextStyle(fontSize: 17.0)),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
