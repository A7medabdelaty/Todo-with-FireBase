import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/layout/layout.dart';
import 'package:todo/provider/main_provider.dart';
import 'package:todo/shared/styles/theme.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => MainProvider(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ToDo App',
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
      },
      initialRoute: HomeScreen.routeName,
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darkTheme,
      themeMode: ThemeMode.light,
    );
  }
}
