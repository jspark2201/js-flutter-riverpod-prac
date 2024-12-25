import 'package:flutter/material.dart';
import 'package:js_riverpod_prac/features/post/presentation/pages/post_list_page.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Riverpod Prac"),
        elevation: 5,
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(12),
          children: [
            ElevatedButton(onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) =>
              const PostListPage()));
            }, child: const Text("post list")),
          ],
        ),
      ),
    );
  }
}
