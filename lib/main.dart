import 'package:flutter/material.dart';
import 'package:flutter_foldable_sidebar_demo/home_screen.dart';
import 'package:flutter_foldable_sidebar_demo/splash_page.dart';
import 'package:flutter_foldable_sidebar_demo/routes/settings_screen.dart';
import 'package:flutter_foldable_sidebar_demo/routes/log_out_screen.dart';
import 'package:flutter_foldable_sidebar_demo/routes/profile_screen.dart';
//import 'package:flutter/services.dart';

void main() {
  // Use Code below to disable orientation in your app
  /** WidgetsFlutterBinding.ensureInitialized();
  //SystemChrome.setPreferredOrientations(
  //[DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
**/
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Splash(),
      routes: {
        '/profile': (context) => Profile(),
        '/settings': (context) => Settings(),
        '/logout': (context) => LogOut(),
        '/home': (context) => HomeScreen(),
      },
    );
  }
}
