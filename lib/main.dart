// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:spotify_clone/routes/routes.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppPage.getnavbar(),
      getPages: AppPage.routes,
    ),
  );
}
