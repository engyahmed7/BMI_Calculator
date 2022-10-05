// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '../../models/user/user_model.dart';
import '../messenger/messenger_Screen.dart';


class UserScreen extends StatelessWidget {
  List<UserModel> users = [
    UserModel(id: 1, name: 'Ahmed', phone: '01000000000'),
    UserModel(id: 2, name: 'Mohamed', phone: '01000000000'),
    UserModel(id: 3, name: 'Ali', phone: '01000000000'),
    UserModel(id: 4, name: 'Sayed', phone: '01000000000'),
    UserModel(id: 5, name: 'Khaled', phone: '01000000000'),
    UserModel(id: 6, name: 'Hassan', phone: '01000000000'),
    UserModel(id: 7, name: 'Hossam', phone: '01000000000'),
    UserModel(id: 8, name: 'Mahmoud', phone: '01000000000'),
    UserModel(id: 9, name: 'Samer', phone: '01000000000'),
    UserModel(id: 10, name: 'Salem', phone: '01000000000'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Users'),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => buildUserModel(users[index]),
          separatorBuilder: (context, index) => Divider(
                thickness: 2.0,
              ),
          itemCount: users.length),
      bottomNavigationBar: BottomNavigationBar(
        // elevation: 20.0,
        // backgroundColor: Colors.white54,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        currentIndex: 1,
        items: [
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(
                Icons.chat,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MessengerScreen()),
                );
              },
            ),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(
                Icons.people,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => UserScreen()),
                );
              },
            ),
            label: 'People',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.camera_alt,
            ),
            label: 'Camera',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.call,
            ),
            label: 'Calls',
          ),
        ],
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),
    );
  }

  Widget buildUserModel(UserModel users) => Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 30.0,
              backgroundColor: Colors.blue,
              child: Text(
                users.id.toString(),
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              width: 20.0,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  users.name,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Text(
                  '${users.phone}',
                  style: TextStyle(
                      color: Colors.grey[500], fontWeight: FontWeight.bold),
                )
              ],
            )
          ],
        ),
      );
}
