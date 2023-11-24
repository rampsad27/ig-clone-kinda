import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InstagramMainPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class InstagramMainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.camera_alt),
          onPressed: () {
            // Add action for the camera icon
          },
          color: Colors.black,
        ),
        title: Text(
          'Instagram',
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Billabong',
            fontSize: 35.0,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.send),
            onPressed: () {
              // Add action for the send icon
            },
            color: Colors.black,
          ),
        ],
      ),
      body: Column(
        children: [

          ListTile(
            leading: CircleAvatar(
              radius: 20.0,
              backgroundImage: AssetImage('assets/pp.jpg'),
            ),
            title: Text(
              'ram',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text('Czdfg'),
            trailing: IconButton(
              icon: Icon(Icons.more_horiz),
              onPressed: () {
                // Add action for the three dots icon (post options)
              },
            ),
          ),
          Container(
            height: 300.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/post.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                // Navigate to the home page
              },
            ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                // Navigate to the search page
              },
            ),
            IconButton(
              icon: Icon(Icons.add_box),
              onPressed: () {
                // Navigate to the page for adding a post
              },
            ),
            IconButton(
              icon: Icon(Icons.favorite_border),
              onPressed: () {
                // Navigate to the liked posts page
              },
            ),
            IconButton(
              icon: Icon(Icons.account_circle),
              onPressed: () {
                // Navigate to the user profile page
              },
            ),
          ],
        ),
      ),
    );
  }
}
