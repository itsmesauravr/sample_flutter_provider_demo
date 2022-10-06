import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample_flutter/page1.dart';
import 'package:sample_flutter/provider/provider_demo.dart';
import 'package:sample_flutter/provider/provider_demo2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ProviderDemo(),
        ),
        ChangeNotifierProvider(
          create: (context) => ProviderDemo2(),
        ),
      ],
      child: const MaterialApp(
        home: Page1(),
      ),
    );
  }
}
