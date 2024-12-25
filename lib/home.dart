import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:js_riverpod_prac/features/post/presentation/pages/post_list_page.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home.g.dart';

@riverpod
String helloWorld(Ref ref) {
  return 'Hello world';
}

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context,  WidgetRef ref) {
    final String value = ref.watch(helloWorldProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Riverpod Prac"),
        elevation: 5,
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(12),
          children: [
            TextButton(onPressed: () {
            }, child: Text(value)),
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
