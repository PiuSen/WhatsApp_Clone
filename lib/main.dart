import 'package:flutter/material.dart';
import 'package:whatsapp/screen/mobile_screen_layout.dart';
import 'package:whatsapp/screen/web_screen_layout.dart';
import 'package:whatsapp/utils/responsive_layout.dart';
import 'package:whatsapp/widgets/colors.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp Ui',
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: backgroundColor
        ),
    home: ResponsiveLayout(mobileScreenLayout:  MobileScreenLayout() ,webScreenLayout:WebScreenLayout() ,),
    );
  }
}

