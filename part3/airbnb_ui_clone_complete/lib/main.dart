import 'package:airbnb_ui_clone/screens/explore/explore.dart';
import 'package:airbnb_ui_clone/screens/explore/widgets/destinations.dart';
import 'package:airbnb_ui_clone/screens/seoul/seoul_detail.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Airbnb UI Clone',
      theme: ThemeData(fontFamily: 'AirbnbCereal'),
      routes: {
        '/': (context) => Explore(), // 기본 경로에 대한 홈 화면
        '/seoul': (context) => SeoulDetail(), // 서울 상세화면
      },
    );
  }
}
