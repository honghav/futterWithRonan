import 'package:flutter/material.dart';
import 'package:flutterwithronan/W6-s2/EXERCISE-2/model/profile_tile_model.dart';

// Sample ProfileData instance
ProfileData soksanProfile = ProfileData(
  name: "Honghav",
  position: "Flutter Developer",
  avatarUrl: 'assets/w5-s2/profile.jpg',
  tiles: [
    TileData(icon: Icons.phone, title: "Phone Number", value: "+123 456 7890"),
    TileData(icon: Icons.location_on, title: "Address", value: "123 Cambodia"),
    TileData(icon: Icons.email, title: "Mail", value: "honghav.leang@student.cadt.edu.kh"),
  ],
);