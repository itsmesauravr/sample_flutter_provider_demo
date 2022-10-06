import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample_flutter/page2.dart';
import 'package:sample_flutter/provider/provider_demo.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    log("Page1 Rebuilded");
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Page2(),
                  ),
                );
              },
              child: const Text("Page1"),
            ),
          ),
          TextButton(
            onPressed: () {
              Provider.of<ProviderDemo>(context, listen: false)
                  .changeValue("No.1 developer");
            },
            child: const Text(
              "Press here to change text",
              style: TextStyle(color: Colors.red),
            ),
          ),
          Consumer<ProviderDemo>(
            builder: (context, value, child) {
              log("Text button Rebuilded");
              return Text(value.name);
            },
          ),
          const SizedBox(
            height: 20,
          ),
          Provider.of<ProviderDemo>(context).creatWidget(),
        ],
      ),
    );
  }
}
