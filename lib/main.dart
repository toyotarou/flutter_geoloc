import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'screens/home_screen.dart';

void main() async {
  await dotenv.load();

  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'GeoLoc',
        theme: ThemeData.dark(useMaterial3: false),
        home: HomeScreen(),
        debugShowCheckedModeBanner: false);
  }
}
