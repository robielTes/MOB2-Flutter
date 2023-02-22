import 'package:flutter/material.dart';
class FavorityPage extends StatelessWidget {
  const FavorityPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: const Text("Quote"),
      ),
      body: const Center(
        child: Text("Favorite Page"),
      ),
    
    );
  }
}

