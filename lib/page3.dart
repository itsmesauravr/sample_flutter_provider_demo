import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample_flutter/page1.dart';
import 'package:sample_flutter/provider/provider_demo.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    print("Page 3 Rebuilded");
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
                    builder: (context) => const Page1(),
                  ),
                );
              },
              child: const Text("Page3"),
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
          Text(Provider.of<ProviderDemo>(context).name),
        ],
      ),
    );
  }
}
