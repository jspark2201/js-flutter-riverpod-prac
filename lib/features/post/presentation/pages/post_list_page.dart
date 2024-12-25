import 'package:flutter/material.dart';
import 'package:js_riverpod_prac/features/post/presentation/widgets/post_item.dart';

class PostListPage extends StatelessWidget {
  const PostListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("post list page"),
      ),
      body: SafeArea(
          child: ListView(
        children: [
          ...List.generate(30, (intext) => PostItem()).toList()
        ],
      ),
      ),
    );
  }
}
