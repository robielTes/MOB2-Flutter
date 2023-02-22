import 'package:flutter/material.dart';
import 'package:quoter/managers/quote_manager.dart';
import 'package:quoter/widgets/quote_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: const Text("Quote"),
      ),
      body: QuoteView(),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: (){},
              tooltip: 'Favorite',
              child: const Icon(Icons.favorite),
              backgroundColor: Colors.pink,
            ),
            FloatingActionButton(
              // Asks the QuoteManager for the `next` method.
              // Note that we are completely unaware of the underlying implementation, is it GetIt? or anything else? We don't care!
              onPressed: QuoteManager.instance.next,
              tooltip: 'New quote',
              child: const Icon(Icons.subdirectory_arrow_left),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
            backgroundColor: Colors.pink,
          ),
        ],
        selectedItemColor: Colors.green[800],
      ),
    );
  }
}

