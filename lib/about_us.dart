import 'package:flutter/material.dart';

class AboutUsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('about us'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            const Text(
              'تطبيق العناية بالبشرة',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Text(
              'نحن نهتم بتقديم أفضل رعاية لبشرتك. تطبيقنا يقدم حلول فعالة ومنتجات طبيعية لتحسين صحة وجمال بشرتك.',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: const Text('تواصل معنا'),
            ),
          ],
        ),
      ),
    );
  }
}
