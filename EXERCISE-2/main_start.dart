import 'package:flutter/material.dart';
import 'package:flutterwithronan/W6-s2/EXERCISE-2/data/profile_data.dart';
import 'package:flutterwithronan/W6-s2/EXERCISE-2/model/profile_tile_model.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ProfileApp(profileData: soksanProfile),
  ));
}

const Color mainColor = Color(0xff5E9FCD);

class ProfileApp extends StatelessWidget {
  final ProfileData profileData;

  const ProfileApp({Key? key, required this.profileData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor.withAlpha(100),
      appBar: AppBar(
        backgroundColor: mainColor,
        title: const Text(
          'CADT student Profile',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: profileData.avatarUrl != null
                  ? AssetImage(profileData.avatarUrl!)
                  : null,
              child: profileData.avatarUrl == null
                  ? Icon(Icons.person, size: 50)
                  : null,
            ),
            Text(
              profileData.name,
              style:const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              profileData.position,
              style:const TextStyle(fontSize: 20),
            ),
            ...profileData.tiles.map((tile) => Card(
              child: ListTile(
                leading: Icon(tile.icon),
                title: Text(tile.title),
                subtitle: Text(tile.value),
              ),
            )).toList(),
          ],
        ),
      ),
    );
  }
}