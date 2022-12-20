// ignore_for_file: prefer_const_constructors

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    SizedBox(width: 15, height: 90),
                    Text(
                      "Ara",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 315),
                      child: Icon(
                        Icons.camera_alt_outlined,
                        color: Colors.white,
                        size: 25,
                      ),
                    )
                  ],
                ),
                Container(
                  width: 370,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(15, 3, 0, 0),
                    child: TextField(
                      decoration: InputDecoration(
                        icon: Icon(Icons.search_outlined),
                        hintText: "What do you want to listen to?",
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 60),
                Row(
                  children: [
                    SizedBox(width: 20),
                    Text(
                      "Hepsine göz at",
                      style: TextStyle(
                        color: Colors.grey[200],
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 17),
                Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(width: 20),
                        newContainer("2022 Özeti"),
                        SizedBox(width: 18),
                        newContainer("Podcast'ler"),
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        newContainer("Senin için Hazırlandı"),
                        SizedBox(width: 18),
                        newContainer("Yeni Çıkanlar"),
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        newContainer("Pop"),
                        SizedBox(width: 18),
                        newContainer("Hip Hop"),
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        newContainer("Ruh Hali"),
                        SizedBox(width: 18),
                        newContainer("Popüler"),
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        newContainer("Dans ve Elektronik"),
                        SizedBox(width: 18),
                        newContainer("Rock"),
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        newContainer("Chill"),
                        SizedBox(width: 18),
                        newContainer("RnB"),
                      ],
                    ),
                    SizedBox(height: 15),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container newContainer(String text) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
      ),
      height: 93,
      width: 175,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 50, 20),
        child: Container(
          margin: EdgeInsets.fromLTRB(13, 8, 0, 0),
          child: Text(
            text,
            style: TextStyle(
                fontSize: 17, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
