import 'package:get/get.dart';
import 'package:spotify_clone/navbar/navbar.dart';
import 'package:spotify_clone/screens/home_screen.dart';
import 'package:spotify_clone/screens/library_screen.dart';
import 'package:spotify_clone/screens/premium_screen.dart';
import 'package:spotify_clone/screens/search_screen.dart';

class AppPage {
  static List<GetPage> routes = [
    GetPage(name: navbar, page: () => const NavBar()),
    GetPage(name: home, page: () => const HomeScreen()),
    GetPage(name: search, page: () => const SearchScreen()),
    GetPage(name: library, page: () => const LibraryScreen()),
    //GetPage(name: premium, page: () => const PremiumScreen()),
  ];

  static getnavbar() => navbar;
  static gethome() => home;
  static getsearch() => search;
  //static getpremium() => premium;
  static getlibrary() => library;

  static String navbar = "/";
  static String home = "/home_screen";
  static String search = "/search_screen";
  static String library = "/library_screen";
  //static String premium = "/premium_screen";
}
