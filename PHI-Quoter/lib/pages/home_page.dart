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
      floatingActionButton: FloatingActionButton(
        // Asks the QuoteManager for the `next` method.
        // Note that we are completely unaware of the underlying implementation, is it GetIt? or anything else? We don't care!
        onPressed: QuoteManager.instance.next,
        tooltip: 'New quote',
        child: const Icon(Icons.subdirectory_arrow_left),
      ),
    );
  }
}
