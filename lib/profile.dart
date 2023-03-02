import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Profile Page',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                  'https://asset.kompas.com/crops/gPeOWFA3DUFaCuYq0NhrzsdXB7E=/0x0:779x519/750x500/data/photo/2021/10/15/61698c7aece86.jpg'),
            ),
            SizedBox(height: 20),
            Text(
              'Muhammad Rizki Firmansyah',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),
            Text(
              '123200064',
              style: TextStyle(fontSize: 16),
            ),

            SizedBox(height: 20),
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                  'https://asset.kompas.com/crops/gPeOWFA3DUFaCuYq0NhrzsdXB7E=/0x0:779x519/750x500/data/photo/2021/10/15/61698c7aece86.jpg'),
            ),
            SizedBox(height: 20),
            Text(
              'Rio Bintang Adi Putra',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),
            Text(
              '123200087',
              style: TextStyle(fontSize: 16),
            ),


            SizedBox(height: 20),
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                  'https://asset.kompas.com/crops/gPeOWFA3DUFaCuYq0NhrzsdXB7E=/0x0:779x519/750x500/data/photo/2021/10/15/61698c7aece86.jpg'),
            ),
            SizedBox(height: 20),
            Text(
              'Ridwan Darmawan',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),
            Text(
              '123200090',
              style: TextStyle(fontSize: 16),
            ),

          ],
        ),
      ),
    );
  }
}