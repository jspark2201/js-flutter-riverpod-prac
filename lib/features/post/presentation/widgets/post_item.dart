import 'package:flutter/material.dart';

class PostItem extends StatelessWidget {
  const PostItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              color: Colors.red.withOpacity(0.5),
            ),
            SizedBox(width: 4,),
            Text("post title"),
            Spacer(),
            true ? Icon(Icons.star) : Icon(Icons.star_border)
          ],
        ),
      ),
    );
  }
}
