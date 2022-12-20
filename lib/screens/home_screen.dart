// ignore_for_file: prefer_const_constructors, unnecessary_string_escapes

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                    SizedBox(height: 110, width: 15),
                    newMainText("İyi akşamlar"),
                    SizedBox(width: 130),
                    Icon(Icons.notification_add_outlined, color: Colors.white),
                    SizedBox(width: 30),
                    Icon(Icons.settings_backup_restore_outlined,
                        color: Colors.white),
                    SizedBox(width: 30),
                    Icon(Icons.settings, color: Colors.white),
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    //EN SON YANA DOĞRU SCROLL KISMINDA KALDIM + FOTOLAR AYARLANICAK
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(width: 15),
                      newBox("Run It Down", "album1.jpg"),
                      SizedBox(width: 30),
                      newBox("Awake Ep", "album2.jpg"),
                      SizedBox(width: 30),
                      newBox("Brainwash", "album3.jpg"),
                      SizedBox(width: 30),
                      newBox("Ophelia", "album4.jpg"),
                    ],
                  ),
                ),
                SizedBox(height: 35),
                Row(
                  children: [
                    SizedBox(width: 15),
                    newMainText("Senin için derlendi"),
                  ],
                ),
                SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    //EN SON YANA DOĞRU SCROLL KISMINDA KALDIM + FOTOLAR AYARLANICAK
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(width: 15),
                      newBox("Silence", "album5.jpg"),
                      SizedBox(width: 30),
                      newBox("Devil's Gun - Raising The Beast", "album6.jpg"),
                      SizedBox(width: 30),
                      newBox("Magdalena", "album7.jpg"),
                      SizedBox(width: 30),
                      newBox("Sound Wave - Abstract Cover", "album8.jpg"),
                      SizedBox(width: 15),
                    ],
                  ),
                ),
                SizedBox(height: 25),
                //Buraya avatarlı öneri rowu
                Row(
                  children: [
                    SizedBox(width: 15),
                    CircleAvatar(
                      backgroundImage: AssetImage("images/metro.jpg"),
                      radius: 25,
                    ),
                    SizedBox(width: 15),
                    Column(
                      children: [
                        Text(
                          "Diğer müziklerini keşfet",
                          style:
                              TextStyle(color: Colors.grey[400], fontSize: 12),
                        ),
                        Text(
                          " Metro Boomin",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 15),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    //EN SON YANA DOĞRU SCROLL KISMINDA KALDIM + FOTOLAR AYARLANICAK
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(width: 15),
                      newBox(
                          "Drake, 21 Savage, Metro Boomin, Future, Juice Wrld",
                          "metro1.jpg"),
                      SizedBox(width: 30),
                      newBox(
                          "Drake, 21 Savage, Metro Boomin, Future, Juice Wrld",
                          "metro2.jpg"),
                      SizedBox(width: 30),
                      newBox(
                          "Drake, 21 Savage, Metro Boomin, Future, Juice Wrld",
                          "metro3.jpg"),
                      SizedBox(width: 30),
                      newBox(
                          "Drake, 21 Savage, Metro Boomin, Future, Juice Wrld",
                          "metro4.jpg"),
                      SizedBox(width: 15),
                    ],
                  ),
                ),
                SizedBox(height: 35),
                Row(
                  children: [
                    SizedBox(width: 15),
                    newMainText("Popüler yeni çıkanlar"),
                  ],
                ),
                SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    //EN SON YANA DOĞRU SCROLL KISMINDA KALDIM + FOTOLAR AYARLANICAK
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(width: 15),
                      newBox("Jayball - Music Is My Therapy", "album9.jpg"),
                      SizedBox(width: 30),
                      newBox("Starboy", "album10.jpg"),
                      SizedBox(width: 30),
                      newBox("Starboy", "album11.jpg"),
                      SizedBox(width: 30),
                      newBox("First Aid Kit - Ruins", "album12.jpg"),
                      SizedBox(width: 15),
                    ],
                  ),
                ),
                SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Text newMainText(String text) {
    return Text(
      text,
      style: TextStyle(
          color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
    );
  }

  Column newBox(String text, String assetName) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/$assetName"),
              fit: BoxFit.cover,
            ),
          ),
          padding: EdgeInsets.all(75),
        ),
        SizedBox(height: 8),
        Container(
          width: 150,
          child: Center(
            child: Text(
              text,
              textAlign: TextAlign.justify,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: TextStyle(
                color: Colors.grey[400],
                fontSize: 13,
              ),
            ),
          ),
        )
      ],
    );
  }
}
