import 'package:flutter/material.dart';
import 'package:quoter/managers/quote_manager.dart';
import 'package:quoter/widgets/quote_view.dart';
import 'package:quoter/pages/favority_page.dart';


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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: (){},
              tooltip: 'Favorite',
              child: const Icon(Icons.favorite),
              backgroundColor: Colors.pink,
              heroTag: "Favorite",
            ),
            FloatingActionButton(
              onPressed: QuoteManager.instance.next,
              tooltip: 'New quote',
              child: const Icon(Icons.subdirectory_arrow_left),
              heroTag: "New quote",
            ),
            FloatingActionButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FavorityPage()),
                );
              },
              tooltip: 'Favority Page',
              child: const Icon(Icons.list_rounded),
              heroTag: "Favority Page",
            ),
          ],
        ),
      ),
     /*  bottomNavigationBar: BottomNavigationBar(
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
      ), */
    );
  }
}

