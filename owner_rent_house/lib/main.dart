import 'package:flutter/material.dart';

import 'package:owner_rent_house/components/housebox.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF5F6F6),
        primaryColor: const Color(0xFF811B83),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: const Color(0xFFFA5019),
        ),
        textTheme: TextTheme(
          displayLarge: const TextStyle(
            color: Color(0xFF100E34),
          ),
          bodyLarge: TextStyle(
            color: const Color(0xFF100E34).withOpacity(0.5),
          ),
        ),
      ),
      home: HouseBox(),
    );
  }
}
