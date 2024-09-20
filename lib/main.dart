import 'package:comment_pickerrr/Provider/MainProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Result.dart';
import 'home.dart';
import 'loading.dart';
import 'newPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => MainProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home2(),
      ),
    );
  }
}
