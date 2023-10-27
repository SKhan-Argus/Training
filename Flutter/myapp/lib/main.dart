import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: const Text('I am Rich'),
        backgroundColor: Colors.blueGrey[900],
        centerTitle: true,
      ),
      body: const Center(
        child: Image(
          image: NetworkImage(
              'https://www.simplilearn.com/ice9/free_resources_article_thumb/what_is_image_Processing.jpg'),
        ),
      ),
    ),
  ),);
}
