import 'package:flutter/material.dart';
import 'package:get_it_mixin/get_it_mixin.dart';
import 'package:quoter/managers/quote_manager.dart';
import 'package:quoter/models/quote.dart';

class QuoteView extends StatelessWidget with GetItMixin {
  QuoteView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Connects the the QuoteManager event stream
    AsyncSnapshot<Quote> snapshot = watchStream((QuoteManager m) => m.stream, Quote.none());

    return SingleChildScrollView(
      child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _buildQuote(context, snapshot),
            ],
          )
        ),
    );
  }

  Widget _buildQuote(BuildContext context, AsyncSnapshot<Quote> snapshot) {
    if (snapshot.hasData) {
      return Padding(
        padding: const EdgeInsets.all(32),
        child: Column(children: <Widget>[
          Text(snapshot.data!.body,
              style: TextStyle(color: Colors.blue, fontSize: 48)),
          Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Text(
                snapshot.data!.author,
                style: TextStyle(
                    color: Colors.blue[200], fontSize: 36),
              )
          ),
        ]),
      );
    } else if (snapshot.hasError) {
      return Text('${snapshot.error}',
          style: TextStyle(color: Colors.red, fontSize: 32));
    }
    return const CircularProgressIndicator();
  }
}
