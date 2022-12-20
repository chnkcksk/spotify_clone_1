// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LibraryScreen extends StatefulWidget {
  const LibraryScreen({super.key});

  @override
  State<LibraryScreen> createState() => _LibraryScreenState();
}

class _LibraryScreenState extends State<LibraryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 25),
                Row(
                  children: [
                    SizedBox(width: 15),
                    CircleAvatar(
                      backgroundImage: AssetImage("images/future.webp"),
                      radius: 20,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Kitaplığın",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 23,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 140),
                    Icon(
                      size: 35,
                      Icons.search_outlined,
                      color: Colors.white,
                    ),
                    SizedBox(width: 15),
                    Icon(
                      size: 35,
                      Icons.add,
                      color: Colors.white,
                    ),
                  ],
                ),
                SizedBox(height: 25),
                Column(
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(width: 15),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18),
                                  color: Colors.grey[900],
                                ),
                                width: 120,
                                height: 35,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(17, 9, 0, 0),
                                  child: Text(
                                    "Çalma listeleri",
                                    style: TextStyle(
                                      color: Colors.grey[200],
                                      fontSize: 13,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18),
                                  color: Colors.grey[900],
                                ),
                                width: 180,
                                height: 35,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(15, 9, 0, 0),
                                  child: Text(
                                    "Podcast'ler ve Programlar",
                                    style: TextStyle(
                                      color: Colors.grey[200],
                                      fontSize: 13,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18),
                                  color: Colors.grey[900],
                                ),
                                width: 90,
                                height: 35,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(15, 9, 0, 0),
                                  child: Text(
                                    "İndirilenler",
                                    style: TextStyle(
                                      color: Colors.grey[200],
                                      fontSize: 13,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 15),
                            ],
                          ),
                          SizedBox(height: 30),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.swap_vert_outlined,
                            color: Colors.white,
                          ),
                          SizedBox(width: 10),
                          Text(
                            "Son çalınanlar",
                            style: TextStyle(color: Colors.grey[200]),
                          ),
                          SizedBox(width: 230),
                          Icon(
                            Icons.border_all_outlined,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(width: 15),
                            Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("images/img_6.jpg"),
                                  fit: BoxFit.cover,
                                ),
                                color: Colors.grey[900],
                              ),
                              width: 75,
                              height: 75,
                            ),
                            SizedBox(width: 15),
                            Column(
                              children: [
                                Text(
                                  "Chill Hits  ",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  "Çalma Listesi ",
                                  style: TextStyle(
                                      color: Colors.grey[400], fontSize: 11),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 18),
                        Row(
                          children: [
                            SizedBox(width: 15),
                            Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("images/img_3.jpg"),
                                  fit: BoxFit.cover,
                                ),
                                color: Colors.grey[900],
                              ),
                              width: 75,
                              height: 75,
                            ),
                            SizedBox(width: 15),
                            Column(
                              children: [
                                Text(
                                  "Cleaning Kit",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  "Çalma Listesi     ",
                                  style: TextStyle(
                                      color: Colors.grey[400], fontSize: 11),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 18),
                        Row(
                          children: [
                            SizedBox(width: 15),
                            Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("images/img_9.jpg"),
                                  fit: BoxFit.cover,
                                ),
                                color: Colors.grey[900],
                              ),
                              width: 75,
                              height: 75,
                            ),
                            SizedBox(width: 15),
                            Column(
                              children: [
                                Text(
                                  "Sad Songs",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  "Çalma Listesi  ",
                                  style: TextStyle(
                                      color: Colors.grey[400], fontSize: 11),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 18),
                        Row(
                          children: [
                            SizedBox(width: 15),
                            Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("images/img_4.jpg"),
                                  fit: BoxFit.cover,
                                ),
                                color: Colors.grey[900],
                              ),
                              width: 75,
                              height: 75,
                            ),
                            SizedBox(width: 15),
                            Column(
                              children: [
                                Text(
                                  "Lo-Fi Beats ",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  "Çalma Listesi     ",
                                  style: TextStyle(
                                      color: Colors.grey[400], fontSize: 11),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 18),
                        Row(
                          children: [
                            SizedBox(width: 15),
                            Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("images/img_8.jpg"),
                                  fit: BoxFit.cover,
                                ),
                                color: Colors.grey[900],
                              ),
                              width: 75,
                              height: 75,
                            ),
                            SizedBox(width: 15),
                            Column(
                              children: [
                                Text(
                                  "Feel Good Piano",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  "Çalma Listesi                ",
                                  style: TextStyle(
                                      color: Colors.grey[400], fontSize: 11),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 18),
                        Row(
                          children: [
                            SizedBox(width: 15),
                            Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("images/img_7.jpg"),
                                  fit: BoxFit.cover,
                                ),
                                color: Colors.grey[900],
                              ),
                              width: 75,
                              height: 75,
                            ),
                            SizedBox(width: 15),
                            Column(
                              children: [
                                Text(
                                  "Deep Focus",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  "Çalma Listesi     ",
                                  style: TextStyle(
                                      color: Colors.grey[400], fontSize: 11),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 18),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
