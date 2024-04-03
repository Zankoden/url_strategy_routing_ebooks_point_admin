import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';
import 'dash_screen.dart'; // Ensure this is pointing to your DashScreen file
import 'test_page.dart'; // Ensure this is pointing to your TestPage file
import 'test_page2.dart'; // Ensure this is pointing to your TestPage2 file

void main() {
  setPathUrlStrategy(); // Removes the '#' from the URL in web apps
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ebooks Point Admin Panel',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/tempHome': (context) => const TempHomePage(),
        '/testPage': (context) => const TestPage(),
        '/testPage2': (context) => const TestPage2(),
        // Add more named routes as needed
      },
    );
  }
}

class TempHomePage extends StatelessWidget {
  const TempHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SelectionArea(
        child: Center(
          child: Text("This is Temp Home"),
        ),
      ),
    );
  }
}
