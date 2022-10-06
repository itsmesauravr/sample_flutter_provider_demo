import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample_flutter/page3.dart';
import 'package:sample_flutter/provider/provider_demo.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
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
                    builder: (context) => const Page3(),
                  ),
                );
              },
              child: const Text("Page2"),
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
